module GooglePlayApi
  module Proto
    class RequestContext < ::ProtocolBuffers::Message
      required :string, :authSubToken, 1
      required :int32, :isSecure, 2
      required :int32, :version, 3
      required :string, :androidId, 4
      optional :string, :deviceAndSdkVersion, 5
      optional :string, :userLanguage, 6
      optional :string, :userCountry, 7
      optional :string, :operatorAlpha, 8
      optional :string, :simOperatorAlpha, 9
      optional :string, :operatorNumeric, 10
      optional :string, :simOperatorNumeric, 11

      gen_methods! # new fields ignored after this point
    end
  end
end
