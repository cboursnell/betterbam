#include "betterbam_object.hpp"

#include <stdio.h>
#include <string>

#include "api/BamReader.h"

using namespace BamTools;

using namespace std;

betterbam_object::betterbam_object(char *file) : file_(file) {}

int betterbam_object::betterbam_method() {
  return 0;
}

