# TwitterClient::Get2UsersMeResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**User**](User.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2UsersMeResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

