# TwitterClient::FullTextEntitiesAnnotationsInnerAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **normalized_text** | **String** | Text used to determine annotation. | [optional] |
| **probability** | **Float** | Confidence factor for annotation type. | [optional] |
| **type** | **String** | Annotation type. | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::FullTextEntitiesAnnotationsInnerAllOf.new(
  normalized_text: Barack Obama,
  probability: null,
  type: Person
)
```

