# TwitterClient::BlockUserMutationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**BlockUserMutationResponseData**](BlockUserMutationResponseData.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::BlockUserMutationResponse.new(
  data: null,
  errors: null
)
```

