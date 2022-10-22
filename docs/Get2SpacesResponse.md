# TwitterClient::Get2SpacesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Space&gt;**](Space.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2SpacesResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

