#include <iostream>
#include <iomanip>
#include <fstream>
#include <stdio.h>
#include <recorder.h>


// example usage

int main (int argc, char *argv[])
{

  // create recorder interface
  Audio::A_Recorder rec;
  rec.setup();

  // create processor interface
  Audio::AudioProcessor proc(rec.getStream());

  // open thread for reading audio stream
  std::thread reader(
    [&rec]()
    {
      rec.Start();
    }
    );

  // process block in seperate thread
  std::thread processor([&proc]()
    {
      proc.Start();
    });

  // do other stuff in main thread  
  std::cout << std::numeric_limits<short>::max() << std::endl;

  // keep recording for 5 seconds
  const auto timepoint_to_run = std::chrono::system_clock::now() + std::chrono::seconds(15);
  while (std::chrono::system_clock::now() < timepoint_to_run)
  {
    // if there are amplitudes available..
    if (!proc.getAmplitude().empty())
    {
        //print the current amplitude per buffer
        auto amplitude = proc.getAmplitude().pop_front();
        
        int level = static_cast<int>(amplitude * 2 * 10);
        for (int i = 0; i < level; i++)
          std::cout << "#";
        std::cout << "\n";
        
    }
  }



  // stop threads
  rec.Stop();
  proc.Stop();

  // join threads
  if (reader.joinable())
    reader.join();
  if (processor.joinable())
    processor.join();

  return 0;
}