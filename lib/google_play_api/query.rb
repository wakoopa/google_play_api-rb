module GooglePlayApi
  class Query
    attr_accessor :session

    def initialize(attrs = {})
      attrs.each { |k, v| send(:"#{k}=", v) }
    end

    def request_group
      @request_group ||= GooglePlayApi::Proto::Request::RequestGroup.new
    end
  end
end
