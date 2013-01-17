require 'google_play_api/proto/response_context'
require 'google_play_api/proto/apps_response'
require 'google_play_api/proto/comments_response'
require 'google_play_api/proto/get_image_response'
require 'google_play_api/proto/categories_response'
require 'google_play_api/proto/sub_categories_response'

module GooglePlayApi
  module Proto
    class Response < ::ProtocolBuffers::Message
      # forward declarations
      class ResponseGroup < ::ProtocolBuffers::Message; end

      # nested messages
      class ResponseGroup < ::ProtocolBuffers::Message
        optional ResponseContext, :context, 2
        optional AppsResponse, :appsResponse, 3
        optional CommentsResponse, :commentsResponse, 4
        optional GetImageResponse, :imageResponse, 10
        optional CategoriesResponse, :categoriesResponse, 20
        optional SubCategoriesResponse, :subCategoriesResponse, 13

        gen_methods! # new fields ignored after this point
      end

      repeated ResponseGroup, :responsegroup, 1

      gen_methods! # new fields ignored after this point
    end
  end
end
