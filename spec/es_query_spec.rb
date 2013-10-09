require 'spec_helper'

describe ESQuery, "#new"  do
  it "will have default instance variables" do
    pending "testing instance varilbles"
    time = mock(Time)
    time.expect(:new)
    es = ESQuery.new(Time.now, "type")
    es.instance_variable_get(@type).should eq("type")
    es.instance_variable_get(@host).should eq("http://i.logsearch.rgops.com:9200")
    es.instance_variable_get(@index).should eq("logstash-#{}")
  end

  it "allows you to override default host and index" do
    pending "testing instance variable override initialization"
    es = ESQuery.new(Time.now, "type", "http://host.tld", "index_name")
    es.instance_variable_get(@host).should eq("http://host.tld")
    es.instance_variable_get(@index).should eq("index_name")
  end
end

describe ESQuery, "get_mapping" do
  it "returns a mapping for the specified doc type" do
    # es = ESQuery.new()
    pending "testing mapping"
  end
end

describe ESQuery, "query" do
  it "returns a query result for the specified search term" do
    pending "testing query"
  end
end

describe ESQuery, "get_count" do
  it "returns a count for the specified search term" do
    pending "testing count"
  end
end

describe ESQuery, "get_result" do
  it "returns the result of an http get request" do
    pending "testing result"
  end
end

describe ESQuery, "encode_params" do
  it "returns a nested hash query as a set of url encoded parameters" do
    pending "testing parameter encoding"
  end
end