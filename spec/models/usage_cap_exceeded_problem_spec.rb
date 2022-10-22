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

# Unit tests for TwitterClient::UsageCapExceededProblem
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TwitterClient::UsageCapExceededProblem do
  let(:instance) { TwitterClient::UsageCapExceededProblem.new }

  describe 'test an instance of UsageCapExceededProblem' do
    it 'should create an instance of UsageCapExceededProblem' do
      expect(instance).to be_instance_of(TwitterClient::UsageCapExceededProblem)
    end
  end
  describe 'test attribute "period"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Daily", "Monthly"])
      # validator.allowable_values.each do |value|
      #   expect { instance.period = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "scope"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Account", "Product"])
      # validator.allowable_values.each do |value|
      #   expect { instance.scope = value }.not_to raise_error
      # end
    end
  end

end
