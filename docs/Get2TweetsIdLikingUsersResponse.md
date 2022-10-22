# TwitterClient::Get2TweetsIdLikingUsersResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;User&gt;**](User.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2ListsIdFollowersResponseMeta**](Get2ListsIdFollowersResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2TweetsIdLikingUsersResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

