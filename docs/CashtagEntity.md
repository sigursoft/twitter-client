# TwitterClient::CashtagEntity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Integer** | Index (zero-based) at which position this entity ends.  The index is exclusive. |  |
| **start** | **Integer** | Index (zero-based) at which position this entity starts.  The index is inclusive. |  |
| **tag** | **String** |  |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::CashtagEntity.new(
  _end: 61,
  start: 50,
  tag: TWTR
)
```

