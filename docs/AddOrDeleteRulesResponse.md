# TwitterClient::AddOrDeleteRulesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Rule&gt;**](Rule.md) | All user-specified stream filtering rules that were created. | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **meta** | [**RulesResponseMetadata**](RulesResponseMetadata.md) |  |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::AddOrDeleteRulesResponse.new(
  data: null,
  errors: null,
  meta: null
)
```

