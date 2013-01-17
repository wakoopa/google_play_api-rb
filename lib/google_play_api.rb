require 'google_play_api/proto'
require 'google_play_api/proto/app'
require 'google_play_api/proto/app_type'
require 'google_play_api/proto/apps_request'
require 'google_play_api/proto/apps_response'
require 'google_play_api/proto/categories_request'
require 'google_play_api/proto/categories_response'
require 'google_play_api/proto/category'
require 'google_play_api/proto/comment'
require 'google_play_api/proto/comments_request'
require 'google_play_api/proto/comments_response'
require 'google_play_api/proto/get_image_request'
require 'google_play_api/proto/get_image_response'
require 'google_play_api/proto/request'
require 'google_play_api/proto/request_context'
require 'google_play_api/proto/response'
require 'google_play_api/proto/response_context'
require 'google_play_api/proto/sub_categories_request'
require 'google_play_api/proto/sub_categories_response'

require 'google_play_api/market_session'

require 'httparty'

module GooglePlayApi
  class LoginFailedError < StandardError; end
  class NotLoggedInError < StandardError; end
end
