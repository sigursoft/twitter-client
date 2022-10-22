# TwitterClient::Get2UsersIdPinnedListsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | **Array&lt;Array&gt;** |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |
| **meta** | [**Get2ComplianceJobsResponseMeta**](Get2ComplianceJobsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2UsersIdPinnedListsResponse.new(
  data: null,
  errors: null,
  includes: null,
  meta: null
)
```

