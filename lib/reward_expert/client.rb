module RewardExpert
  # API calls client class
  class Client
    attr_reader :conn

    def initialize
      @conn = RewardExpert.connection
    end

    def cards
      conn.get('cards').body['cards']
    end

    def cards_as_hash
      result = {}

      cards.each do |card|
        result[card['id']] = card
      end

      result
    end
  end
end
