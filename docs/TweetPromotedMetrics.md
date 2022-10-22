# TwitterClient::TweetPromotedMetrics

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **impression_count** | **Integer** | Number of times this Tweet has been viewed. | [optional] |
| **like_count** | **Integer** | Number of times this Tweet has been liked. | [optional] |
| **reply_count** | **Integer** | Number of times this Tweet has been replied to. | [optional] |
| **retweet_count** | **Integer** | Number of times this Tweet has been Retweeted. | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::TweetPromotedMetrics.new(
  impression_count: null,
  like_count: null,
  reply_count: null,
  retweet_count: null
)
```

