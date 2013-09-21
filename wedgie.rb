require 'net/http'
require 'JSON'

# Use this class to return an elasticsearch query on a given index.
#
class Wedgie

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

  private

  def clean_request(dsl)
    return "If I were a cleaned and formatted query dsl, I would return some data."
  end

  def get_result(uri)
    result = Net::HTTP.get_response(uri)
    return result
  end
end