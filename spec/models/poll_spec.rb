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

# Unit tests for TwitterClient::Poll
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe TwitterClient::Poll do
  let(:instance) { TwitterClient::Poll.new }

  describe 'test an instance of Poll' do
    it 'should create an instance of Poll' do
      expect(instance).to be_instance_of(TwitterClient::Poll)
    end
  end
  describe 'test attribute "duration_minutes"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "end_datetime"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "options"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "voting_status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["open", "closed"])
      # validator.allowable_values.each do |value|
      #   expect { instance.voting_status = value }.not_to raise_error
      # end
    end
  end

end