require 'net/http'
require 'JSON'
require 'debugger'

# require 'addressable' # => look up this gem, it may have been mentioned

module Wedgie
  # store the mapping in an object-oriented way so we can search
  # based on the object.
  # Use this class to return an elasticsearch query on a given index.
  class Search
    # pass in date as datetime format
    # type is for event type: eg rg_event, cee_event
    # build index based off date
    def initialize(host=nil, index=nil)
      @host  = host
      @index = index
      if @host.nil?
        @host = 'http://localhost:9200'
      end
    end

    # if queried with arg 'json' return as stringified json
    # instead of an object.

    # returns a mapping of the requested index and type.
    def get_mapping(type=nil, json=nil)
      uri = URI("#{@host}/#{@index}/#{@type}/_mapping")
      result = get_result(uri)
      return JSON.parse(result.body)
    end

    # simple searching on query string. needed: support for
    # passing a query dsl.
    # also: specify an analyzer to use when searching to override default
    def query(term, type=nil, json=nil)
      uri = URI("#{@host}/#{@index}/#{@type}/_search?q=#{term}")
      result = get_result(uri)
      return JSON.parse(result.body)
    end

    # return the document count for a particular search term.
    def get_count(term, type=nil, json=nil)
      uri = URI("#{@host}/#{@index}/#{@type}/_count?q=#{term}")
      result = get_result(uri)
      return JSON.parse(result.body)
    end

    def delete(index=nil, document=nil)
      return 'Implement delete index or document'
    end
  end
end
