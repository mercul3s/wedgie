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

describe Wedgie::Search, "#new" do
end
describe Wedgie::Search, "get_mapping" do
  it "returns a mapping for the specified doc type" do
    # es = Wedgie.new()
    pending "testing mapping"
  end
end

describe Wedgie, "query" do
  it "returns a query result for the specified search term" do
    pending "testing query"
  end
end

describe Wedgie, "get_count" do
  it "returns a count for the specified search term" do
    pending "testing count"
  end
end

describe Wedgie, "get_result" do
  it "returns the result of an http get request" do
    pending "testing result"
  end
end

describe Wedgie, "encode_params" do
  it "returns a nested hash query as a set of url encoded parameters" do
    pending "testing parameter encoding"
  end
end