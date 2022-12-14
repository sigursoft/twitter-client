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

# Unit tests for TwitterClient::CreateComplianceJobRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TwitterClient::CreateComplianceJobRequest do
  let(:instance) { TwitterClient::CreateComplianceJobRequest.new }

  describe 'test an instance of CreateComplianceJobRequest' do
    it 'should create an instance of CreateComplianceJobRequest' do
      expect(instance).to be_instance_of(TwitterClient::CreateComplianceJobRequest)
    end
  end
  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "resumable"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["tweets", "users"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

end
