#include <recorder.h>

using namespace Audio;


AudioSettings::AudioSettings(const std::string& device, std::size_t buffer_size, std::size_t framerate, std::size_t channels) :
  device(device),
  buffer_size(buffer_size),
  framerate(framerate),
  channels(channels)
{}

AudioSettings::AudioSettings() : 
  device("hw:1"),
  buffer_size(256),
  framerate(44100),
  channels(1)
{}


A_Recorder::A_Recorder() :
    m_settings(),
    m_recordingformat(SND_PCM_FORMAT_S16_LE)
{}

A_Recorder::A_Recorder(const AudioSettings& settings) :
    m_settings(settings)
{}


A_Recorder::~A_Recorder()
{   
    // free params
    snd_pcm_hw_params_free (m_hwparams);

    // free buffer
    free(m_buffer);

    // free handle
    snd_pcm_close (m_handle);
}

void A_Recorder::Start()
{
    // keep running untill other thread tells to stop
    while (!m_stop.load(std::memory_order_relaxed))
    {
        // read data
        auto ret = snd_pcm_readi(m_handle, m_buffer, m_settings.buffer_size);

        // if ret not complete buffer stop
        if (ret != m_settings.buffer_size)
        {
            std::cout << "Recording stoped, unvalid read size\n";
            break;
        }

        // store to thread-safe buffer
        std::vector<s16> data;
        data.resize(m_settings.buffer_size);
        std::memcpy(data.data(), m_buffer, m_buffersize);
        m_tsbuffer.push_back(data);
    }
}

void A_Recorder::Stop()
{
    m_stop = true;
}

bool A_Recorder::setup()
{
    // open audio device

    //auto ret = snd_pcm_open (&m_handle, m_settings.device.c_str(), SND_PCM_STREAM_CAPTURE, 0);
    if ( snd_pcm_open (&m_handle, m_settings.device.c_str(), SND_PCM_STREAM_CAPTURE, 0) < 0)
        return false;
    
    // allocate hw parameter structure
    if ( snd_pcm_hw_params_malloc (&m_hwparams) < 0)
        return false;
    
    // initialize hw param structure
    if ( snd_pcm_hw_params_any (m_handle, m_hwparams) < 0)
        return false;
    
    // set hw access
    if ( snd_pcm_hw_params_set_access (m_handle, m_hwparams, SND_PCM_ACCESS_RW_INTERLEAVED) < 0)
        return false;
    
    // set hw format
    if ( snd_pcm_hw_params_set_format (m_handle, m_hwparams, m_recordingformat) < 0)
        return false;

    // set sample rate
    if ( snd_pcm_hw_params_set_rate_near (m_handle, m_hwparams, &m_settings.framerate, 0) < 0)
        return false;

    // set num channels
    if ( snd_pcm_hw_params_set_channels (m_handle, m_hwparams, m_settings.channels) < 0)
        return false;

    // set hw params
    if ( snd_pcm_hw_params (m_handle, m_hwparams) < 0)
        return false;
    
    // prepare handle
    if ( snd_pcm_prepare (m_handle) < 0)
        return false;

    // prepare buffer
    m_buffersize = m_settings.buffer_size * snd_pcm_format_width(m_recordingformat) / 8 * m_settings.channels;
    m_buffer = (s16*)malloc(m_buffersize);

    return true;
}

tsqueue<std::vector<s16>>& A_Recorder::getStream()
{
    return m_tsbuffer;
}



