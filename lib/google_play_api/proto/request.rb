require 'google_play_api/proto/apps_request'
require 'google_play_api/proto/comments_request'
require 'google_play_api/proto/get_image_request'
require 'google_play_api/proto/sub_categories_request'
require 'google_play_api/proto/categories_request'
require 'google_play_api/proto/request_context'

module GooglePlayApi
  module Proto
    class Request < ::ProtocolBuffers::Message
      # forward declarations
      class RequestGroup < ::ProtocolBuffers::Message; end

      # nested messages
      class RequestGroup < ::ProtocolBuffers::Message
        optional AppsRequest, :appsRequest, 4
        optional CommentsRequest, :commentsRequest, 5
        optional GetImageRequest, :imageRequest, 11
        optional SubCategoriesRequest, :subCategoriesRequest, 14
        optional CategoriesRequest, :categoriesRequest, 21

        gen_methods! # new fields ignored after this point
      end

      optional GooglePlayApi::Proto::RequestContext, :context, 1
      repeated RequestGroup, :requestgroup, 2

      gen_methods! # new fields ignored after this point
    end
  end
end
