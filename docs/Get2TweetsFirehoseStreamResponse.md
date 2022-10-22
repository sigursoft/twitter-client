# TwitterClient::Get2TweetsFirehoseStreamResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Tweet**](Tweet.md) |  | [optional] |
| **errors** | [**Array&lt;Problem&gt;**](Problem.md) |  | [optional] |
| **includes** | [**Expansions**](Expansions.md) |  | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::Get2TweetsFirehoseStreamResponse.new(
  data: null,
  errors: null,
  includes: null
)
```

