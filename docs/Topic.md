# TwitterClient::Topic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | The description of the given topic. | [optional] |
| **id** | **String** | Unique identifier of this Topic. |  |
| **name** | **String** | The name of the given topic. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Topic.new(
  description: All about technology,
  id: null,
  name: Technology
)
```

