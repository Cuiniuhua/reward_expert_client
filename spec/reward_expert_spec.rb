require 'spec_helper'

RSpec.describe RewardExpert do
  it 'has a version number' do
    expect(RewardExpert::VERSION).not_to be nil
  end

  it 'has proper config' do
    # Clear the singleton class
    load 'reward_expert/configuration.rb'

    described_class.configure do |config|
      config.api_prefix = '/v4'
    end

    expect(described_class.config.host).to eq 'https://static0.rewardexpert.com'
    expect(described_class.config.api_prefix).to eq '/v4'
  end
end
