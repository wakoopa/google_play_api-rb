require 'google_play_api/proto/category'

module GooglePlayApi
  module Proto
    class SubCategoriesResponse < ::ProtocolBuffers::Message
      repeated Category, :category, 1
      optional :string, :subCategoryDisplay, 2
      optional :int32, :subCategoryId, 3

      gen_methods! # new fields ignored after this point
    end
  end
end
