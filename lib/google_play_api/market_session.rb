require 'uri'
require 'base64'

module GooglePlayApi
  class MarketSession
    SERVICE                       = "androidsecure"
    LOGIN_URL                     = "https://www.google.com/accounts/ClientLogin"
    API_URL                       = "https://android.clients.google.com/market/api/ApiRequest"
    ACCOUNT_TYPE_GOOGLE           = "GOOGLE"
    ACCOUNT_TYPE_HOSTED           = "HOSTED"
    ACCOUNT_TYPE_HOSTED_OR_GOOGLE = "HOSTED_OR_GOOGLE"
    PROTOCOL_VERSION              = 2

    attr_accessor :username, :password, :session_params

    def initialize(username, password)
      self.username = username
      self.password = password

      @loggedin = false
    end

    def login
      # do post request
      response = HTTParty.post(LOGIN_URL, body: login_params)

      # check if request went ok
      if response.response.is_a?(Net::HTTPOK)
        @loggedin = true

        # login login response and set session_params
        parse_login_response!(response)
      else
        # raise error
        raise LoginFailedError
      end
    end

    def loggedin?
      @loggedin
    end

    def execute(query)
      # only do request when successfully logged in
      if loggedin?
        # create new request
        request = GooglePlayApi::Proto::Request.new
        request.context = context

        # set request group to request
        request.requestgroup << query.request_group

        HTTParty.post(API_URL, body: api_data(request), headers: api_headers)
      else
        raise NotLoggedInError
      end
    end

    def session_params
      @session_params ||= {}
    end

    private

    def parse_login_response!(response)
      # split on new lines
      response.body.split("\n").each do |line|
        # split k,v on =
        key, value = line.split('=')

        # set key values in session params hash
        session_params[key.strip.downcase] = value.strip
      end
    end

    def login_params
      params = { 
        'Email'       => username,
        'Passwd'      => password,
        'service'     => SERVICE,
        'source'      => 'google_play_api-rb',
        'accountType' => ACCOUNT_TYPE_HOSTED_OR_GOOGLE
      }
    end

    def api_headers
      { 'Cookie'         => "ANDROIDSECURE=#{session_params['auth']}",
        'User-Agent'     => 'Android-Market/2 (sapphire PLAT-RC33); gzip',
        'Content-Type'   => 'application/x-www-form-urlencoded',
        'Accept-Charset' => 'ISO-8859-1,utf-8;q=0.7,*;q=0.7' }
    end

    def api_data(request)
      "version=#{PROTOCOL_VERSION}&request=#{Base64.encode64(request.to_s)}"
    end

    def context
      unless @context
        @context = GooglePlayApi::Proto::RequestContext.new

        @context.isSecure            = 1
        @context.version             = 1002
        @context.androidId           = '0123456789'
        @context.userLanguage        = 'en'
        @context.userCountry         = 'US'
        @context.deviceAndSdkVersion = 'crespo:10'
        @context.operatorAlpha       = 'T-Mobile'
        @context.simOperatorAlpha    = 'T-Mobile'
        @context.operatorNumeric     = '310260'
        @context.simOperatorNumeric  = '310260'
        @context.authSubToken        = session_params['auth']
      end

      @context
    end

  end
end
