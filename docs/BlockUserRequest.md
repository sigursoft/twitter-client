# TwitterClient::BlockUserRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target_user_id** | **String** | Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::BlockUserRequest.new(
  target_user_id: 2244994945
)
```

