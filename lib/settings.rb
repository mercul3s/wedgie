require 'net/http'
require 'JSON'
require 'debugger'

module Wedgie
  class Cluster

    def initialize(host=nil, index=nil)
      @host = host
      if @host.nil?
        @host = 'http://localhost:9200'
      end
    end

    def health
      return 'Implement check health status'
    end
    
    
  end
end