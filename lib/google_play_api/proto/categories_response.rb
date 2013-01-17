require 'google_play_api/proto/category'

module GooglePlayApi
  module Proto
    class CategoriesResponse < ::ProtocolBuffers::Message
      repeated Category, :categories, 1

      gen_methods! # new fields ignored after this point
    end
  end
end
