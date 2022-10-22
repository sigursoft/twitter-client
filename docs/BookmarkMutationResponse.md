# TwitterClient::BookmarkMutationResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**BookmarkMutationResponseData**](BookmarkMutationResponseData.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::BookmarkMutationResponse.new(
  data: null,
  errors: null
)
```

