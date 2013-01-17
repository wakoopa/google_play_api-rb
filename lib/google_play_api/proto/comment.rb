module GooglePlayApi
  module Proto
    class Comment < ::ProtocolBuffers::Message
      optional :string, :text, 1
      optional :int32, :rating, 2
      optional :string, :authorName, 3
      optional :uint64, :creationTime, 4
      optional :string, :authorId, 5

      gen_methods! # new fields ignored after this point
    end
  end
end
