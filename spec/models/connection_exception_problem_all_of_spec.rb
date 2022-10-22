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

# Unit tests for TwitterClient::ConnectionExceptionProblemAllOf
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TwitterClient::ConnectionExceptionProblemAllOf do
  let(:instance) { TwitterClient::ConnectionExceptionProblemAllOf.new }

  describe 'test an instance of ConnectionExceptionProblemAllOf' do
    it 'should create an instance of ConnectionExceptionProblemAllOf' do
      expect(instance).to be_instance_of(TwitterClient::ConnectionExceptionProblemAllOf)
    end
  end
  describe 'test attribute "connection_issue"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["TooManyConnections", "ProvisioningSubscription", "RuleConfigurationIssue", "RulesInvalidIssue"])
      # validator.allowable_values.each do |value|
      #   expect { instance.connection_issue = value }.not_to raise_error
      # end
    end
  end

end