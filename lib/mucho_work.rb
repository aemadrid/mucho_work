raise "MuchoWork only runs on JRuby. Sorry!" unless (RUBY_PLATFORM =~ /java/)
require 'java'
require 'rubygems'
require 'hazelcast-client'

class MuchoWork

  GEM_ROOT = File.expand_path(File.dirname(__FILE__)) unless defined?(GEM_ROOT)

end

require MuchoWork::GEM_ROOT + '/MuchoWork.jar'

%w{ mucho_work job job_failure manager }.each do |name|
  path = MuchoWork::GEM_ROOT + '/mucho_work/' + name
  puts ">> Requiring #{path} ..."
  require path
end

