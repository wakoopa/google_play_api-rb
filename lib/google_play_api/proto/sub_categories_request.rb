require 'google_play_api/proto/app_type'

module GooglePlayApi
  module Proto
    class SubCategoriesRequest < ::ProtocolBuffers::Message
      optional AppType, :appType, 1

      gen_methods! # new fields ignored after this point
    end
  end
end
