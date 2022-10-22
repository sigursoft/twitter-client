# TwitterClient::EntityIndicesInclusiveInclusive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is inclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::EntityIndicesInclusiveInclusive.new(
  _end: 61,
  start: 50
)
```

