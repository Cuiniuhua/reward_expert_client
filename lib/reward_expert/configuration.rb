require 'singleton'

module RewardExpert
  # Client initial confiruration class
  class Configuration
    include Singleton
    attr_accessor :host, :api_prefix, :log_response, :auth

    def initialize
      @api_prefix = 'api/v2'
      @host = 'https://static.rewardexpert.com'
      @log_response = false
      @auth = nil # Array for basic auth [name, password]
    end
  end
end
