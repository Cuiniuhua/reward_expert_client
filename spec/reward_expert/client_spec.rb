require 'spec_helper'

RSpec.describe RewardExpert::Client do
  subject { described_class.new }

  before do
    RewardExpert.configure do |config|
      config.auth = %w(reward FrUBgnRsC8kKtyoaDd64kRxD)
      # config.log_response = true
    end
  end

  describe 'GET /api/v2/cards', vcr: { cassette_name: 'cards' } do
    it 'gets cards' do
      expect(subject.cards.first['id']).to eq 'card-30'
    end

    it 'gets cards and present as hash' do
      card = subject.cards_as_hash['card-30']
      expect(card['name']).to eq 'Citi ThankYou® Premier Card'
    end
  end
end
