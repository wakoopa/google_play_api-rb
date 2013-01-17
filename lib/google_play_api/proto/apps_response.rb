require 'google_play_api/proto/app'

module GooglePlayApi
  module Proto
    class AppsResponse < ::ProtocolBuffers::Message
      repeated App, :app, 1
      optional :int32, :entriesCount, 2

      gen_methods! # new fields ignored after this point
    end
  end
end
