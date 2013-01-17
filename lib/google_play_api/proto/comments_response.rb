require 'google_play_api/proto/comment'

module GooglePlayApi
  module Proto
    class CommentsResponse < ::ProtocolBuffers::Message
      repeated Comment, :comments, 1
      optional :int32, :entriesCount, 2

      gen_methods! # new fields ignored after this point
    end
  end
end
