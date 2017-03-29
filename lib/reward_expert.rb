require 'faraday_middleware'
require 'reward_expert/version'
require 'reward_expert/client'
require 'reward_expert/configuration'

# RewardExpert module
module RewardExpert
  class << self
    def configure
      yield Configuration.instance
    end

    def config
      Configuration.instance
    end

    def connection
      Faraday.new("#{config.host}/#{config.api_prefix}") do |conn|
        conn.request :url_encoded
        conn.response :logger if config.log_response
        conn.response :json
        conn.basic_auth(*config.auth) if config.auth
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
