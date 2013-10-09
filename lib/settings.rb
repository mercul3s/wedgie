require 'net/http'
require 'JSON'
require 'debugger'

module Wedgie
  class Cluster

    # TODO: check input host for http/s, output warning if none and offer to add it
    # also check for port number offer to add if none
    def initialize(host=nil, index=nil)
      @host  = host
      @index = index
      if @host.nil?
        @host = 'http://localhost:9200'
      end
      if @index.nil?
        @index = ""
      end
      return self
    end

    # reference cap tasks for all health checks
    def health
      return 'Implement cluster check health status'
      # "curl -XGET --silent 'http://localhost:9200/_cluster/health?pretty=true'"
    end

    def indexes
      # "curl -s -XGET http://localhost:9200/_status?pretty=true | grep logstash-201 | grep { | sed -e 's:[{\:\"]::g' | sort -u"
    end

    def nodes
      # return a node health check
    end

    def jvm_status
      # return a health check of the jvm on all nodes
    end

    def concurrent_recoveries
      # allow changing of the concurrent recovered shards
    end
    

  end
end