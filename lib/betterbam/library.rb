class BetterBam
  class Library

    require 'rbconfig'

    def self.lib_extension
      case RbConfig::CONFIG['host_os']
        when /linux/ then return 'so'
        when /darwin/ then return 'dylib'
        else raise NotImplementedError,
          "Native library is not available for Windows platform"
      end
    end

    # Load the correct library for the OS system in use
    # @return [String] the absolute path for the filename of the shared library
    # @note this method is called automatically when the module is loaded
    def self.load
      path = File.expand_path File.dirname(__FILE__)
      path.gsub!(/lib\/betterbam/,'ext')
      path = File.join(path,"libbetterbam.#{self.lib_extension}")
      puts path
      return path
    end

  end
end
