require 'google_play_api/proto/get_image_request'

module GooglePlayApi
  module Proto
    class GetImageRequest < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module AppImageUsage
        include ::ProtocolBuffers::Enum
        ICON = 0
        SCREENSHOT = 1
        SCREENSHOT_THUMBNAIL = 2
        PROMO_BADGE = 3
        BILING_ICON = 4
      end

      optional :string, :appId, 1
      optional GetImageRequest::AppImageUsage, :imageUsage, 3
      optional :string, :imageId, 4

      gen_methods! # new fields ignored after this point
    end
  end
end
