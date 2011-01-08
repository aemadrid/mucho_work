require 'yaml'

class MuchoWork
  class Manager

    attr_reader :client, :map

    def initialize(username = nil, password = nil, host = nil, map_name = 'mucho_work_jobs')
      @client = Hazelcast::Client.new username, password, host
      @map = @client.map map_name
      @map.addIndex 'uuid', true
      @map.addIndex 'type', true
      @map.addIndex 'status', true
      @map.addIndex 'tryCount', true
      @map.addIndex 'createdAt', true
    end

    def process(type, payload = {})
      job = MuchoWork::Job.new type.to_s
      job.format = "yaml"
      job.payload = payload.to_yaml
      map[job.uuid] = job
      job
    end

  end
end