module GooglePlayApi
  module Proto
    class Category < ::ProtocolBuffers::Message
      optional :int32, :appType, 2
      optional :string, :title, 4
      optional :string, :categoryId, 3
      optional :string, :subtitle, 5
      repeated Category, :subCategories, 8

      gen_methods! # new fields ignored after this point
    end
  end
end
