require 'spec_helper'

describe Wedgie::Cluster, "#new"  do
  it "will have default instance variables when created with no index and host specified" do
    es    = Wedgie::Cluster.new
    host  = es.instance_variable_get(:@host)
    index = es.instance_variable_get(:@index)
    host.should eq("http://localhost:9200")
    index.should eq("")
  end

  it "allows you to override default host and index" do
    es    = Wedgie::Cluster.new("http://example.com:9200", "test")
    host  = es.instance_variable_get(:@host)
    index = es.instance_variable_get(:@index)
    host.should eq("http://example.com:9200")
    index.should eq("test")
  end
end

describe

describe Wedgie::Search, "#new" do
  it "will create a new search object based off cluster settings" do
    pending "write and test new search object"
  end
end

describe Wedgie::Search, "get_mapping" do
  it "returns a mapping for the specified doc type" do
    # es = Wedgie.new()
    pending "testing mapping"
  end
end

describe Wedgie::Search, "query" do
  it "returns a query result for the specified search term" do
    pending "testing query"
  end
end

describe Wedgie::Search, "get_count" do
  it "returns a count for the specified search term" do
    pending "testing count"
  end
end

describe Wedgie::Search, "delete" do
  it "deletes an index or a document" do
    pending "finish up method to delete index or doc, split into two methods if needed"
  end
end

describe Wedgie::Utilities, "clean_request" do
  it "returns a correctly formatted dsl request as a query string" do
    pending "write and test the method for parsing query string/dsl"
  end
end

describe Wedgie::Utilities, "get_result" do
  it "returns the result of an http get request" do
    pending "test mocked http request"
  end
end
