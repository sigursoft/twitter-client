# Load the gem
require 'twitter_client'

# Setup authorization
TwitterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  # Bearer Token
  config.access_token = ENV.fetch("BEARER_TOKEN", nil)
end


api_instance = TwitterClient::TweetsApi.new
begin
  result = api_instance.get_rules
  p result
rescue TwitterClient::ApiError => e
  puts "Exception when calling TweetsApi->get_rules: #{e}"
end
