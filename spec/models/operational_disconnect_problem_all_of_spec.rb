=begin
#Twitter API v2

#Twitter API v2 available endpoints

The version of the OpenAPI document: 2.54

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TwitterClient::OperationalDisconnectProblemAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TwitterClient::OperationalDisconnectProblemAllOf do
  let(:instance) { TwitterClient::OperationalDisconnectProblemAllOf.new }

  describe 'test an instance of OperationalDisconnectProblemAllOf' do
    it 'should create an instance of OperationalDisconnectProblemAllOf' do
      expect(instance).to be_instance_of(TwitterClient::OperationalDisconnectProblemAllOf)
    end
  end
  describe 'test attribute "disconnect_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OperationalDisconnect", "UpstreamOperationalDisconnect", "ForceDisconnect", "UpstreamUncleanDisconnect", "SlowReader", "InternalError", "ClientApplicationStateDegraded", "InvalidRules"])
      # validator.allowable_values.each do |value|
      #   expect { instance.disconnect_type = value }.not_to raise_error
      # end
    end
  end

end