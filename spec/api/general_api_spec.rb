=begin
#Twitter API v2

#Twitter API v2 available endpoints

The version of the OpenAPI document: 2.54

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'

# Unit tests for TwitterClient::GeneralApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'GeneralApi' do
  before do
    # run before each test
    @api_instance = TwitterClient::GeneralApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GeneralApi' do
    it 'should create an instance of GeneralApi' do
      expect(@api_instance).to be_instance_of(TwitterClient::GeneralApi)
    end
  end

  # unit tests for get_open_api_spec
  # Returns the OpenAPI Specification document.
  # Full OpenAPI Specification in JSON format. (See https://github.com/OAI/OpenAPI-Specification/blob/master/README.md)
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'get_open_api_spec test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
