#include <iostream>
#include <vector>
#include <cstring>
#include <cmath>
#include <cstdlib>
#include <limits>
#include <string>
#include <thread>
#include <atomic>
#include <algorithm>
#include <alsa/asoundlib.h>

#include "tsqueue.h"
#include "lib/filter_common.h"
#include "lib/filter_includes.h"

#pragma once

namespace Audio
{


typedef short int s16;



struct AudioSettings
{
  AudioSettings();
  AudioSettings(const std::string& device, std::size_t buffer_size, std::size_t framerate, std::size_t channels);

  std::string device;
  std::size_t channels;
  std::size_t buffer_size;
  std::size_t framerate;
};



class A_Recorder : std::enable_shared_from_this<A_Recorder>
{
public:
  
  A_Recorder();
  A_Recorder(const AudioSettings& settings);

  ~A_Recorder();
  
  bool setup();

  void Start();
  void Stop();

  tsqueue<std::vector<s16>>& getStream();

private:
  
  
  std::atomic<bool> m_stop {false}; 
  s16* m_buffer;
  std::size_t m_buffersize;

  tsqueue<std::vector<s16>> m_tsbuffer;

  snd_pcm_t* m_handle;
  snd_pcm_hw_params_t* m_hwparams;
  snd_pcm_format_t m_recordingformat;

  AudioSettings m_settings;

};








}


