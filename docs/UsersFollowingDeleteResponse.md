# TwitterClient::UsersFollowingDeleteResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**ListFollowedResponseData**](ListFollowedResponseData.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::UsersFollowingDeleteResponse.new(
  data: null,
  errors: null
)
```

