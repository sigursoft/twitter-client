# TwitterClient::SearchCount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Time** | The end time of the bucket. |  |
| **start** | **Time** | The start time of the bucket. |  |
| **tweet_count** | **Integer** | The count for the bucket. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::SearchCount.new(
  _end: null,
  start: null,
  tweet_count: null
)
```

