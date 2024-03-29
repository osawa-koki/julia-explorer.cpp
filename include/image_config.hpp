#ifndef image_config_hpp
#define image_config_hpp

#include <string>
#include <gmpxx.h>
#include <complex>

struct ImageConfig
{
  std::string filename;
  int width;
  int height;
  std::complex<mpf_class> upper_left;
  std::complex<mpf_class> lower_right;
  float cx;
  float cy;
  mpf_class progress;
};

#endif
