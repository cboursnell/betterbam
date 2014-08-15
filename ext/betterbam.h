extern "C"
{
  typedef void * betterbam_object_p;

  betterbam_object_p create_betterbam_object(int a, int b);
  void delete_pointer_to_betterbam_object(betterbam_object_p p);
  int betterbam_method(betterbam_object_p p);
};
