#include <atomic>
#include <algorithm>

#include "tsqueue.h"
#include "lib/filter_common.h"
#include "lib/filter_includes.h"

#pragma once

namespace Audio {

typedef short int s16;

class AudioProcessor : std::enable_shared_from_this<AudioProcessor>
{
public:
  
  AudioProcessor(tsqueue<std::vector<s16>>& stream);
  ~AudioProcessor();

  virtual void Start();
  virtual void Stop();
  virtual tsqueue<std::vector<s16>>& getProcessedSamples();

protected:

  // process function
  virtual void processBlock();

  // stop condition
  std::atomic<bool> m_stop {false}; 
  
  // stream to process
  tsqueue<std::vector<s16>>& m_stream;
  // processed samples
  tsqueue<std::vector<s16>> m_processed;

};


class LPFilter : AudioProcessor
{
  public:

    LPFilter(tsqueue<std::vector<s16>>& stream);
    ~LPFilter();
    void setParams();

  protected:

    void processBlock() override;

    SO_LPF m_filter;
};


}

