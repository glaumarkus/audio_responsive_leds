#include <processor.h>

using namespace Audio;


AudioProcessor::AudioProcessor(tsqueue<std::vector<s16>>& stream) :
    m_stream(stream)
{}

AudioProcessor::~AudioProcessor()
{}

void AudioProcessor::Start()
{
    while (!m_stop)
        processBlock();
}

void AudioProcessor::Stop()
{
    m_stop = true;
}

// empty
void AudioProcessor::processBlock()
{
    while (!m_stream.empty())
    {
        // pop front element
        auto nextBlock = m_stream.pop_front();

        // append to processed block
        m_processed.push_back(nextBlock);
    } 
}

tsqueue<std::vector<s16>>& AudioProcessor::getProcessedSamples() 
{
    return m_processed;
}


/*

        // process block

        // find amplitude
        s16 min_sample = 0;
        s16 max_sample = 0;
        for (const auto& sample : nextBlock)
        {
            if (sample > max_sample)
                max_sample = sample;
            else if (sample < min_sample)
                min_sample = sample;
        }
        // turn around min sample
        min_sample *= -1;
        m_amplitudes.push_back(static_cast<float>(std::max(min_sample, max_sample)) / std::numeric_limits<short>::max()); // 
*/


LPFilter::LPFilter(tsqueue<std::vector<s16>>& stream) :
    AudioProcessor(stream)
{}

void LPFilter::setParams()
{}

void LPFilter::processBlock()
{}