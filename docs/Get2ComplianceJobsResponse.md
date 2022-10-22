# TwitterClient::Get2ComplianceJobsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;ComplianceJob&gt;**](ComplianceJob.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **meta** | [**Get2ComplianceJobsResponseMeta**](Get2ComplianceJobsResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2ComplianceJobsResponse.new(
  data: null,
  errors: null,
  meta: null
)
```

