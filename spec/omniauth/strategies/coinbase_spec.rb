require 'spec_helper'

describe OmniAuth::Strategies::CoinBase do

  subject(:coinbase_strategy) do
    OmniAuth::Strategies::CoinBase.new(nil, @options || {})
  end

  describe '#client' do
    it 'should have the correct coinbase site' do
      expect(coinbase_strategy.client.site).to eq("https://coinbase.com")
    end

    it 'should have the correct authorization url' do
      expect(coinbase_strategy.client.options[:authorize_url]).to eq("https://coinbase.com/oauth/authorize")
    end

    it 'should have the correct token url' do
      expect(coinbase_strategy.client.options[:token_url]).to eq('https://coinbase.com/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      expect(coinbase_strategy.callback_path).to eq('/auth/coinbase/callback')
    end
  end
end