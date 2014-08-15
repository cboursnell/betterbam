#include "betterbam_object.hpp"

#include <stdio.h>
#include <string>

#include "api/BamReader.h"
using namespace BamTools;

using namespace std;

betterbam_object::betterbam_object(int a, int b) : a_(a), b_(b) {}

int betterbam_object::betterbam_method() {
  return a_ + b_;
}

