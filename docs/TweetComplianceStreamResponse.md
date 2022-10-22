# TwitterClient::TweetComplianceStreamResponse

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'twitter_client'

TwitterClient::TweetComplianceStreamResponse.openapi_one_of
# =>
# [
#   :'TweetComplianceStreamResponseOneOf',
#   :'TweetComplianceStreamResponseOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'twitter_client'

TwitterClient::TweetComplianceStreamResponse.build(data)
# => #<TweetComplianceStreamResponseOneOf:0x00007fdd4aab02a0>

TwitterClient::TweetComplianceStreamResponse.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TweetComplianceStreamResponseOneOf`
- `TweetComplianceStreamResponseOneOf1`
- `nil` (if no type matches)

