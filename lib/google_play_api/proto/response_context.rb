module GooglePlayApi
  module Proto
    class ResponseContext < ::ProtocolBuffers::Message
      optional :int32, :result, 1
      optional :int32, :unknown1, 2
      optional :string, :unknown2, 3
      optional :int32, :unknown3, 4

      gen_methods! # new fields ignored after this point
    end
  end
end
