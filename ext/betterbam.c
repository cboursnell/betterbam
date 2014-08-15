#include "betterbam_object.hpp"
#include "betterbam.h"


betterbam_object_p create_betterbam_object(char *file) {
  return static_cast<void *>(new betterbam_object(file));
}

void delete_pointer_to_betterbam_object(betterbam_object_p p) {
  delete static_cast<betterbam_object *>(p);
}

int betterbam_method(betterbam_object_p p) {
  betterbam_object o = *static_cast<betterbam_object *>(p);
  return o.betterbam_method();
}
