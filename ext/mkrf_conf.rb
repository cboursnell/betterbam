# create Rakefile for shared library compilation

require File.join("..",File.dirname(__FILE__),"lib/betterbam/library")

path = File.expand_path(File.dirname(__FILE__))
ext = BetterBam::Library.lib_extension

flags = ""
compile = ""
lib = " -I include -L lib -lbamtools -Wl,-rpath=lib/ "
if ext == "so" then
  flags = "-shared -Wl,-soname,libbetterbam.so,-rpath=lib/"
  compile = "-fPIC"
elsif ext == "dylib" then
  flags = "-bundle -undefined dynamic_lookup -flat_namespace"
end


File.open(File.join(path,"Rakefile"),"w") do |rakefile|
  rakefile.write <<-RAKE

task :compile_lib do

  cmd = "g++ -g -Wall -fPIC #{lib} -c betterbam_object.cpp"
  sh cmd
  cmd = "g++ -g -Wall -fPIC #{lib} -c betterbam.c"
  sh cmd
  cmd = "g++ -g -Wall -fPIC -shared -o libbetterbam.so "
  cmd << "betterbam.o betterbam_object.o"
  sh cmd

end

task :default => [:compile_lib]

RAKE

end