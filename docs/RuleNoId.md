# TwitterClient::RuleNoId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tag** | **String** | A tag meant for the labeling of user provided rules. | [optional] |
| **value** | **String** | The filterlang value of the rule. |  |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::RuleNoId.new(
  tag: Non-retweeted coffee Tweets,
  value: coffee -is:retweet
)
```

