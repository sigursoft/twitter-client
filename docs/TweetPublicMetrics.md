# TwitterClient::TweetPublicMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **like_count** | **Integer** | Number of times this Tweet has been liked. |  |
| **quote_count** | **Integer** | Number of times this Tweet has been quoted. | [optional] |
| **reply_count** | **Integer** | Number of times this Tweet has been replied to. |  |
| **retweet_count** | **Integer** | Number of times this Tweet has been Retweeted. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::TweetPublicMetrics.new(
  like_count: null,
  quote_count: null,
  reply_count: null,
  retweet_count: null
)
```

