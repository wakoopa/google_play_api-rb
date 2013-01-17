require 'google_play_api/proto/app_type'

module GooglePlayApi
  module Proto
    class App < ::ProtocolBuffers::Message
      # nested messages
      class ExtendedInfo < ::ProtocolBuffers::Message
        optional :string, :description, 13
        optional :int32, :downloadsCount, 14
        repeated :string, :permissionId, 15
        optional :int32, :installSize, 16
        optional :string, :packageName, 17
        optional :string, :category, 18
        optional :string, :contactEmail, 20
        optional :string, :downloadsCountText, 23
        optional :string, :contactPhone, 26
        optional :string, :contactWebsite, 27
        optional :int32, :screenshotsCount, 30
        optional :string, :promoText, 31
        optional :string, :recentChanges, 38
        optional :string, :promotionalVideo, 43

        gen_methods! # new fields ignored after this point
      end

      optional :string, :id, 1
      optional :string, :title, 2
      optional AppType, :appType, 3, :default => AppType::NONE
      optional :string, :creator, 4
      optional :string, :version, 5
      optional :string, :price, 6
      optional :string, :rating, 7
      optional :int32, :ratingsCount, 8
      optional App::ExtendedInfo, :extendedinfo, 12
      optional :string, :creatorId, 22
      optional :string, :packageName, 24
      optional :int32, :versionCode, 25
      optional :string, :priceCurrency, 32
      optional :int32, :priceMicros, 33

      gen_methods! # new fields ignored after this point
    end
  end
end
