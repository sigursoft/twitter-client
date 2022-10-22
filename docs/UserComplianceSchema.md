# TwitterClient::UserComplianceSchema

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_at** | **Time** | Event time. |  |
| **user** | [**UserComplianceSchemaUser**](UserComplianceSchemaUser.md) |  |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::UserComplianceSchema.new(
  event_at: 2021-07-06T18:40:40Z,
  user: null
)
```

