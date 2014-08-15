require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
end

desc "Run tests"
task :default => ["ext:build", :test]

namespace :ext do
  desc "Build native extension"
  task :build do
    cd "ext"
    ruby "mkrf_conf.rb"
    sh "rake"
    cd ".."
  end

end
