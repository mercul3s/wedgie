module Wedgie
  module Utilities
    def clean_request(dsl)
      return "If I were a cleaned and formatted query dsl, I would return some data."
    end

    def get_result(uri)
      begin
        result = Net::HTTP.get_response(uri)
      rescue Exception => e
        return "You are not connected to a host: #{e}"      
      end
      return result
    end
  end
end