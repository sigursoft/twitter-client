=begin
#Twitter API v2

#Twitter API v2 available endpoints

The version of the OpenAPI document: 2.54

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'

describe TwitterClient::Configuration do
  let(:config) { TwitterClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    # require 'URI'
    # uri = URI.parse("https://api.twitter.com")
    # TwitterClient.configure do |c|
    #   c.host = uri.host
    #   c.base_path = uri.path
    # end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      # expect(config.base_url).to eq("https://api.twitter.com")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        # expect(config.base_url).to eq("https://api.twitter.com")
      end
    end
  end
end
