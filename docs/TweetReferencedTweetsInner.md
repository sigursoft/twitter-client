# TwitterClient::TweetReferencedTweetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |
| **type** | **String** |  |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::TweetReferencedTweetsInner.new(
  id: 1346889436626259968,
  type: null
)
```

