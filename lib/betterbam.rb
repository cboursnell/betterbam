require 'ffi'
# require 'betterbam/library'

class BetterBam

  include FFI
  extend FFI::Library

  # ffi_lib Library.load
  ffi_lib "ext/libbetterbam.so"

  attach_function "delete_pointer_to_betterbam_object",
                  "delete_pointer_to_betterbam_object", [:pointer], :void

  attach_function "betterbam_method", "betterbam_method", [:pointer], :int

  attach_function "create_betterbam_object",
                  "create_betterbam_object", [:pointer], :pointer

  attr_accessor :file

  def initialize file
    self.file = file
  end

  def parse_bam
    pointer = FFI::MemoryPointer.from_string(self.file)
    object = create_betterbam_object(pointer)
    puts betterbam_method(object)
    delete_pointer_to_betterbam_object object
  end

end