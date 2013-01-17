module GooglePlayApi
  module Proto
    class CommentsRequest < ::ProtocolBuffers::Message
      optional :string, :appId, 1
      optional :int32, :startIndex, 2
      optional :int32, :entriesCount, 3

      gen_methods! # new fields ignored after this point
    end
  end
end
