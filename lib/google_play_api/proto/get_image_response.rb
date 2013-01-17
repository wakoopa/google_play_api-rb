module GooglePlayApi
  module Proto
    class GetImageResponse < ::ProtocolBuffers::Message
      optional :bytes, :imageData, 1

      gen_methods! # new fields ignored after this point
    end
  end
end
