# TwitterClient::TweetComplianceData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'twitter_client'

TwitterClient::TweetComplianceData.openapi_one_of
# =>
# [
#   :'TweetDeleteComplianceSchema',
#   :'TweetDropComplianceSchema',
#   :'TweetEditComplianceSchema',
#   :'TweetUndropComplianceSchema',
#   :'TweetWithheldComplianceSchema'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'twitter_client'

TwitterClient::TweetComplianceData.build(data)
# => #<TweetDeleteComplianceSchema:0x00007fdd4aab02a0>

TwitterClient::TweetComplianceData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TweetDeleteComplianceSchema`
- `TweetDropComplianceSchema`
- `TweetEditComplianceSchema`
- `TweetUndropComplianceSchema`
- `TweetWithheldComplianceSchema`
- `nil` (if no type matches)

