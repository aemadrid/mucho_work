require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  gem.name              = "mucho_work"
  gem.homepage          = "http://github.com/aemadrid/mucho_work"
  gem.authors           = ["Adrian Madrid"]
  gem.email             = ["aemadrid@gmail.com"]
  gem.homepage          = "http://github.com/aemadrid/mucho_work/"
  gem.summary           = %q{Getting distributed work done!}
  gem.description       = %q{Distributing work through Hazelcast in a nice JRuby package.}
  gem.platform          = "jruby"

  gem.rubyforge_project = "mucho_work"

  gem.files             = FileList['bin/*', 'lib/**/*.rb', 'jars/**/*', 'test/**/*.rb', '[A-Z]*'].to_a
  gem.test_files        = Dir["test/test*.rb"]
  gem.executables       = FileList['bin/*'].to_a
  gem.require_paths     = ["lib"]

  gem.add_dependency "hazelcast-client"
end
Jeweler::RubygemsDotOrgTasks.new

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :default => :test

require 'rake/rdoctask'
Rake::RDocTask.new do |rdoc|
  version       = File.exist?('VERSION') ? File.read('VERSION') : ""

  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = "mucho_work #{version}"
  rdoc.rdoc_files.include('README*')
  rdoc.rdoc_files.include('lib/**/*.rb')
end
