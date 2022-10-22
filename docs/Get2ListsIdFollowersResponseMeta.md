# TwitterClient::Get2ListsIdFollowersResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_token** | **String** | The next token. | [optional] |
| **previous_token** | **String** | The previous token. | [optional] |
| **result_count** | **Integer** | The number of results returned in this response. | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2ListsIdFollowersResponseMeta.new(
  next_token: null,
  previous_token: null,
  result_count: null
)
```

