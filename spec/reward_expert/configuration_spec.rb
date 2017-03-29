require 'spec_helper'

RSpec.describe RewardExpert::Configuration do
  subject { described_class.instance }

  it 'has default values' do
    expect(subject.host).to eq 'https://static0.rewardexpert.com'
    expect(subject.api_prefix).to eq 'api/v2'
  end

  it 'changes values in singleton' do
    subject.host = 'test'
    subject.api_prefix = 'v4'
    expect(described_class.instance.host).to eq 'test'
    expect(described_class.instance.api_prefix).to eq 'v4'
  end
end
