# TwitterClient::Get2UsersByResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;User&gt;**](User.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2UsersByResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

