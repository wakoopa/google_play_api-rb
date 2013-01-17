require 'google_play_api/query'

module GooglePlayApi
  class SearchAppQuery < Query
    attr_accessor :query, :start_index, :max_entries

    def query=(filter)
      @query = filter
      request_group.appsRequest.query = filter
    end

    def start_index=(index)
      @start_index = index
      request_group.appsRequest.startIndex = index
    end

    def max_entries=(count)
      @max_entries = count
      request_group.appsRequest.entriesCount = count
    end
  end
end
