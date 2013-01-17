require 'google_play_api/proto/app_type'

module GooglePlayApi
  module Proto
    class AppsRequest < ::ProtocolBuffers::Message
      # forward declarations

      # enums
      module OrderType
        include ::ProtocolBuffers::Enum
        NONE = 0
        POPULAR = 1
        NEWEST = 2
        FEATURED = 3
      end

      module ViewType
        include ::ProtocolBuffers::Enum
        ALL = 0
        FREE = 1
        PAID = 2
      end

      optional AppType, :appType, 1
      optional :string, :query, 2
      optional :string, :categoryId, 3
      optional :string, :appId, 4
      optional :bool, :withExtendedInfo, 6
      optional AppsRequest::OrderType, :orderType, 7, :default => AppsRequest::OrderType::NONE
      optional :uint64, :startIndex, 8
      optional :int32, :entriesCount, 9
      optional AppsRequest::ViewType, :viewType, 10, :default => AppsRequest::ViewType::ALL

      gen_methods! # new fields ignored after this point
    end
  end
end
