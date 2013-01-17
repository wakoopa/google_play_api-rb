require 'uri'

module GooglePlayApi
  class MarketSession
    SERVICE                       = "android";
    URL_LOGIN                     = "https://www.google.com/accounts/ClientLogin"
    ACCOUNT_TYPE_GOOGLE           = "GOOGLE"
    ACCOUNT_TYPE_HOSTED           = "HOSTED"
    ACCOUNT_TYPE_HOSTED_OR_GOOGLE = "HOSTED_OR_GOOGLE"
    PROTOCOL_VERSION              = 2

    attr_accessor :username, :password, :session_params

    def initialize(username, password)
      self.username = username
      self.password = password
    end

    def login
      params = { 
        'Email'       => username,
        'Passwd'      => password,
        'service'     => SERVICE,
        'source'      => 'wakoopa-api-1',
        'accountType' => ACCOUNT_TYPE_HOSTED_OR_GOOGLE
      }

      response = HTTParty.post(URL_LOGIN, body: params)

      if response.response.is_a?(Net::HTTPOK)
        parse_login_response!(response)
      else
        raise LoginFailedError
      end
    end

    def execute(request)
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

    def api_header
      { 'Cookie'         => "ANDROID=#{params['auth']}",
        'User-Agent'     => 'Android-Market/2 (sapphire PLAT-RC33); gzip',
        'Content-Type'   => 'application/x-www-form-urlencoded',
        'Accept-Charset' => 'ISO-8859-1,utf-8;q=0.7,*;q=0.7' }
    end

    def api_data(request)
    end

  end
end
