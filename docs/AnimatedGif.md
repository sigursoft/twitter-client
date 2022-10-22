# TwitterClient::AnimatedGif

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preview_image_url** | **String** |  | [optional] |
| **variants** | [**Array&lt;Variant&gt;**](Variant.md) | An array of all available variants of the media. | [optional] |

## Example

```ruby
require 'twitter_client'

instance = TwitterClient::AnimatedGif.new(
  preview_image_url: null,
  variants: null
)
```

