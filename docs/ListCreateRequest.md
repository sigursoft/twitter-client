# TwitterClient::ListCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** |  | [optional] |
| **name** | **String** |  |  |
| **private** | **Boolean** |  | [optional][default to false] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::ListCreateRequest.new(
  description: null,
  name: null,
  private: null
)
```

