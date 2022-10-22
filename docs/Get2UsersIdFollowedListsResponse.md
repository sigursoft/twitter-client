# TwitterClient::Get2UsersIdFollowedListsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Array&lt;Array&gt;** |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2ListsIdFollowersResponseMeta**](Get2ListsIdFollowersResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2UsersIdFollowedListsResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

