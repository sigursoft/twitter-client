# twitter_client

TwitterClient - the Ruby gem for the Twitter API v2

Twitter API v2 available endpoints

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.54
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://developer.twitter.com/](https://developer.twitter.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build twitter_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./twitter_client-1.0.0.gem
```

(for development, run `gem install --dev ./twitter_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'twitter_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'twitter_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'twitter_client'

# Setup authorization
TwitterClient.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2UserToken
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = TwitterClient::BookmarksApi.new
id = 'id_example' # String | The ID of the authenticated source User for whom to return results.
opts = {
  max_results: 56, # Integer | The maximum number of results.
  pagination_token: 'pagination_token_example', # String | This parameter is used to get the next 'page' of results.
  tweet_fields: ['attachments'], # Array<String> | A comma separated list of Tweet fields to display.
  expansions: ['attachments.media_keys'], # Array<String> | A comma separated list of fields to expand.
  media_fields: ['alt_text'], # Array<String> | A comma separated list of Media fields to display.
  poll_fields: ['duration_minutes'], # Array<String> | A comma separated list of Poll fields to display.
  user_fields: ['created_at'], # Array<String> | A comma separated list of User fields to display.
  place_fields: ['contained_within'] # Array<String> | A comma separated list of Place fields to display.
}

begin
  #Bookmarks by User
  result = api_instance.get_users_id_bookmarks(id, opts)
  p result
rescue TwitterClient::ApiError => e
  puts "Exception when calling BookmarksApi->get_users_id_bookmarks: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.twitter.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*TwitterClient::BookmarksApi* | [**get_users_id_bookmarks**](docs/BookmarksApi.md#get_users_id_bookmarks) | **GET** /2/users/{id}/bookmarks | Bookmarks by User
*TwitterClient::BookmarksApi* | [**post_users_id_bookmarks**](docs/BookmarksApi.md#post_users_id_bookmarks) | **POST** /2/users/{id}/bookmarks | Add Tweet to Bookmarks
*TwitterClient::BookmarksApi* | [**users_id_bookmarks_delete**](docs/BookmarksApi.md#users_id_bookmarks_delete) | **DELETE** /2/users/{id}/bookmarks/{tweet_id} | Remove a bookmarked Tweet
*TwitterClient::ComplianceApi* | [**create_batch_compliance_job**](docs/ComplianceApi.md#create_batch_compliance_job) | **POST** /2/compliance/jobs | Create compliance job
*TwitterClient::ComplianceApi* | [**get_batch_compliance_job**](docs/ComplianceApi.md#get_batch_compliance_job) | **GET** /2/compliance/jobs/{id} | Get Compliance Job
*TwitterClient::ComplianceApi* | [**get_tweets_compliance_stream**](docs/ComplianceApi.md#get_tweets_compliance_stream) | **GET** /2/tweets/compliance/stream | Tweets Compliance stream
*TwitterClient::ComplianceApi* | [**get_tweets_label_stream**](docs/ComplianceApi.md#get_tweets_label_stream) | **GET** /2/tweets/label/stream | Tweets Label stream
*TwitterClient::ComplianceApi* | [**get_users_compliance_stream**](docs/ComplianceApi.md#get_users_compliance_stream) | **GET** /2/users/compliance/stream | Users Compliance stream
*TwitterClient::ComplianceApi* | [**list_batch_compliance_jobs**](docs/ComplianceApi.md#list_batch_compliance_jobs) | **GET** /2/compliance/jobs | List Compliance Jobs
*TwitterClient::GeneralApi* | [**get_open_api_spec**](docs/GeneralApi.md#get_open_api_spec) | **GET** /2/openapi.json | Returns the OpenAPI Specification document.
*TwitterClient::ListsApi* | [**get_user_list_memberships**](docs/ListsApi.md#get_user_list_memberships) | **GET** /2/users/{id}/list_memberships | Get a User's List Memberships
*TwitterClient::ListsApi* | [**list_add_member**](docs/ListsApi.md#list_add_member) | **POST** /2/lists/{id}/members | Add a List member
*TwitterClient::ListsApi* | [**list_id_create**](docs/ListsApi.md#list_id_create) | **POST** /2/lists | Create List
*TwitterClient::ListsApi* | [**list_id_delete**](docs/ListsApi.md#list_id_delete) | **DELETE** /2/lists/{id} | Delete List
*TwitterClient::ListsApi* | [**list_id_get**](docs/ListsApi.md#list_id_get) | **GET** /2/lists/{id} | List lookup by List ID.
*TwitterClient::ListsApi* | [**list_id_update**](docs/ListsApi.md#list_id_update) | **PUT** /2/lists/{id} | Update List.
*TwitterClient::ListsApi* | [**list_remove_member**](docs/ListsApi.md#list_remove_member) | **DELETE** /2/lists/{id}/members/{user_id} | Remove a List member
*TwitterClient::ListsApi* | [**list_user_follow**](docs/ListsApi.md#list_user_follow) | **POST** /2/users/{id}/followed_lists | Follow a List
*TwitterClient::ListsApi* | [**list_user_owned_lists**](docs/ListsApi.md#list_user_owned_lists) | **GET** /2/users/{id}/owned_lists | Get a User's Owned Lists.
*TwitterClient::ListsApi* | [**list_user_pin**](docs/ListsApi.md#list_user_pin) | **POST** /2/users/{id}/pinned_lists | Pin a List
*TwitterClient::ListsApi* | [**list_user_pinned_lists**](docs/ListsApi.md#list_user_pinned_lists) | **GET** /2/users/{id}/pinned_lists | Get a User's Pinned Lists
*TwitterClient::ListsApi* | [**list_user_unfollow**](docs/ListsApi.md#list_user_unfollow) | **DELETE** /2/users/{id}/followed_lists/{list_id} | Unfollow a List
*TwitterClient::ListsApi* | [**list_user_unpin**](docs/ListsApi.md#list_user_unpin) | **DELETE** /2/users/{id}/pinned_lists/{list_id} | Unpin a List
*TwitterClient::ListsApi* | [**user_followed_lists**](docs/ListsApi.md#user_followed_lists) | **GET** /2/users/{id}/followed_lists | Get User's Followed Lists
*TwitterClient::SpacesApi* | [**find_space_by_id**](docs/SpacesApi.md#find_space_by_id) | **GET** /2/spaces/{id} | Space lookup by Space ID
*TwitterClient::SpacesApi* | [**find_spaces_by_creator_ids**](docs/SpacesApi.md#find_spaces_by_creator_ids) | **GET** /2/spaces/by/creator_ids | Space lookup by their creators
*TwitterClient::SpacesApi* | [**find_spaces_by_ids**](docs/SpacesApi.md#find_spaces_by_ids) | **GET** /2/spaces | Space lookup up Space IDs
*TwitterClient::SpacesApi* | [**search_spaces**](docs/SpacesApi.md#search_spaces) | **GET** /2/spaces/search | Search for Spaces
*TwitterClient::SpacesApi* | [**space_buyers**](docs/SpacesApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
*TwitterClient::SpacesApi* | [**space_tweets**](docs/SpacesApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.
*TwitterClient::TweetsApi* | [**add_or_delete_rules**](docs/TweetsApi.md#add_or_delete_rules) | **POST** /2/tweets/search/stream/rules | Add/Delete rules
*TwitterClient::TweetsApi* | [**create_tweet**](docs/TweetsApi.md#create_tweet) | **POST** /2/tweets | Creation of a Tweet
*TwitterClient::TweetsApi* | [**delete_tweet_by_id**](docs/TweetsApi.md#delete_tweet_by_id) | **DELETE** /2/tweets/{id} | Tweet delete by Tweet ID
*TwitterClient::TweetsApi* | [**find_tweet_by_id**](docs/TweetsApi.md#find_tweet_by_id) | **GET** /2/tweets/{id} | Tweet lookup by Tweet ID
*TwitterClient::TweetsApi* | [**find_tweets_by_id**](docs/TweetsApi.md#find_tweets_by_id) | **GET** /2/tweets | Tweet lookup by Tweet IDs
*TwitterClient::TweetsApi* | [**find_tweets_that_quote_a_tweet**](docs/TweetsApi.md#find_tweets_that_quote_a_tweet) | **GET** /2/tweets/{id}/quote_tweets | Retrieve Tweets that quote a Tweet.
*TwitterClient::TweetsApi* | [**get_rules**](docs/TweetsApi.md#get_rules) | **GET** /2/tweets/search/stream/rules | Rules lookup
*TwitterClient::TweetsApi* | [**get_tweets_firehose_stream**](docs/TweetsApi.md#get_tweets_firehose_stream) | **GET** /2/tweets/firehose/stream | Firehose stream
*TwitterClient::TweetsApi* | [**get_tweets_sample10_stream**](docs/TweetsApi.md#get_tweets_sample10_stream) | **GET** /2/tweets/sample10/stream | Sample 10% stream
*TwitterClient::TweetsApi* | [**hide_reply_by_id**](docs/TweetsApi.md#hide_reply_by_id) | **PUT** /2/tweets/{tweet_id}/hidden | Hide replies
*TwitterClient::TweetsApi* | [**lists_id_tweets**](docs/TweetsApi.md#lists_id_tweets) | **GET** /2/lists/{id}/tweets | List Tweets timeline by List ID.
*TwitterClient::TweetsApi* | [**sample_stream**](docs/TweetsApi.md#sample_stream) | **GET** /2/tweets/sample/stream | Sample stream
*TwitterClient::TweetsApi* | [**search_stream**](docs/TweetsApi.md#search_stream) | **GET** /2/tweets/search/stream | Filtered stream
*TwitterClient::TweetsApi* | [**space_buyers**](docs/TweetsApi.md#space_buyers) | **GET** /2/spaces/{id}/buyers | Retrieve the list of Users who purchased a ticket to the given space
*TwitterClient::TweetsApi* | [**space_tweets**](docs/TweetsApi.md#space_tweets) | **GET** /2/spaces/{id}/tweets | Retrieve Tweets from a Space.
*TwitterClient::TweetsApi* | [**tweet_counts_full_archive_search**](docs/TweetsApi.md#tweet_counts_full_archive_search) | **GET** /2/tweets/counts/all | Full archive search counts
*TwitterClient::TweetsApi* | [**tweet_counts_recent_search**](docs/TweetsApi.md#tweet_counts_recent_search) | **GET** /2/tweets/counts/recent | Recent search counts
*TwitterClient::TweetsApi* | [**tweets_fullarchive_search**](docs/TweetsApi.md#tweets_fullarchive_search) | **GET** /2/tweets/search/all | Full-archive search
*TwitterClient::TweetsApi* | [**tweets_recent_search**](docs/TweetsApi.md#tweets_recent_search) | **GET** /2/tweets/search/recent | Recent search
*TwitterClient::TweetsApi* | [**users_id_like**](docs/TweetsApi.md#users_id_like) | **POST** /2/users/{id}/likes | Causes the User (in the path) to like the specified Tweet
*TwitterClient::TweetsApi* | [**users_id_liked_tweets**](docs/TweetsApi.md#users_id_liked_tweets) | **GET** /2/users/{id}/liked_tweets | Returns Tweet objects liked by the provided User ID
*TwitterClient::TweetsApi* | [**users_id_mentions**](docs/TweetsApi.md#users_id_mentions) | **GET** /2/users/{id}/mentions | User mention timeline by User ID
*TwitterClient::TweetsApi* | [**users_id_retweets**](docs/TweetsApi.md#users_id_retweets) | **POST** /2/users/{id}/retweets | Causes the User (in the path) to retweet the specified Tweet.
*TwitterClient::TweetsApi* | [**users_id_timeline**](docs/TweetsApi.md#users_id_timeline) | **GET** /2/users/{id}/timelines/reverse_chronological | User home timeline by User ID
*TwitterClient::TweetsApi* | [**users_id_tweets**](docs/TweetsApi.md#users_id_tweets) | **GET** /2/users/{id}/tweets | User Tweets timeline by User ID
*TwitterClient::TweetsApi* | [**users_id_unlike**](docs/TweetsApi.md#users_id_unlike) | **DELETE** /2/users/{id}/likes/{tweet_id} | Causes the User (in the path) to unlike the specified Tweet
*TwitterClient::TweetsApi* | [**users_id_unretweets**](docs/TweetsApi.md#users_id_unretweets) | **DELETE** /2/users/{id}/retweets/{source_tweet_id} | Causes the User (in the path) to unretweet the specified Tweet
*TwitterClient::UsersApi* | [**find_my_user**](docs/UsersApi.md#find_my_user) | **GET** /2/users/me | User lookup me
*TwitterClient::UsersApi* | [**find_user_by_id**](docs/UsersApi.md#find_user_by_id) | **GET** /2/users/{id} | User lookup by ID
*TwitterClient::UsersApi* | [**find_user_by_username**](docs/UsersApi.md#find_user_by_username) | **GET** /2/users/by/username/{username} | User lookup by username
*TwitterClient::UsersApi* | [**find_users_by_id**](docs/UsersApi.md#find_users_by_id) | **GET** /2/users | User lookup by IDs
*TwitterClient::UsersApi* | [**find_users_by_username**](docs/UsersApi.md#find_users_by_username) | **GET** /2/users/by | User lookup by usernames
*TwitterClient::UsersApi* | [**list_get_followers**](docs/UsersApi.md#list_get_followers) | **GET** /2/lists/{id}/followers | Returns User objects that follow a List by the provided List ID
*TwitterClient::UsersApi* | [**list_get_members**](docs/UsersApi.md#list_get_members) | **GET** /2/lists/{id}/members | Returns User objects that are members of a List by the provided List ID.
*TwitterClient::UsersApi* | [**tweets_id_liking_users**](docs/UsersApi.md#tweets_id_liking_users) | **GET** /2/tweets/{id}/liking_users | Returns User objects that have liked the provided Tweet ID
*TwitterClient::UsersApi* | [**tweets_id_retweeting_users**](docs/UsersApi.md#tweets_id_retweeting_users) | **GET** /2/tweets/{id}/retweeted_by | Returns User objects that have retweeted the provided Tweet ID
*TwitterClient::UsersApi* | [**users_id_block**](docs/UsersApi.md#users_id_block) | **POST** /2/users/{id}/blocking | Block User by User ID
*TwitterClient::UsersApi* | [**users_id_blocking**](docs/UsersApi.md#users_id_blocking) | **GET** /2/users/{id}/blocking | Returns User objects that are blocked by provided User ID
*TwitterClient::UsersApi* | [**users_id_follow**](docs/UsersApi.md#users_id_follow) | **POST** /2/users/{id}/following | Follow User
*TwitterClient::UsersApi* | [**users_id_followers**](docs/UsersApi.md#users_id_followers) | **GET** /2/users/{id}/followers | Followers by User ID
*TwitterClient::UsersApi* | [**users_id_following**](docs/UsersApi.md#users_id_following) | **GET** /2/users/{id}/following | Following by User ID
*TwitterClient::UsersApi* | [**users_id_mute**](docs/UsersApi.md#users_id_mute) | **POST** /2/users/{id}/muting | Mute User by User ID.
*TwitterClient::UsersApi* | [**users_id_muting**](docs/UsersApi.md#users_id_muting) | **GET** /2/users/{id}/muting | Returns User objects that are muted by the provided User ID
*TwitterClient::UsersApi* | [**users_id_unblock**](docs/UsersApi.md#users_id_unblock) | **DELETE** /2/users/{source_user_id}/blocking/{target_user_id} | Unblock User by User ID
*TwitterClient::UsersApi* | [**users_id_unfollow**](docs/UsersApi.md#users_id_unfollow) | **DELETE** /2/users/{source_user_id}/following/{target_user_id} | Unfollow User
*TwitterClient::UsersApi* | [**users_id_unmute**](docs/UsersApi.md#users_id_unmute) | **DELETE** /2/users/{source_user_id}/muting/{target_user_id} | Unmute User by User ID


## Documentation for Models

 - [TwitterClient::AddOrDeleteRulesRequest](docs/AddOrDeleteRulesRequest.md)
 - [TwitterClient::AddOrDeleteRulesResponse](docs/AddOrDeleteRulesResponse.md)
 - [TwitterClient::AddRulesRequest](docs/AddRulesRequest.md)
 - [TwitterClient::AnimatedGif](docs/AnimatedGif.md)
 - [TwitterClient::AnimatedGifAllOf](docs/AnimatedGifAllOf.md)
 - [TwitterClient::BlockUserMutationResponse](docs/BlockUserMutationResponse.md)
 - [TwitterClient::BlockUserMutationResponseData](docs/BlockUserMutationResponseData.md)
 - [TwitterClient::BlockUserRequest](docs/BlockUserRequest.md)
 - [TwitterClient::BookmarkAddRequest](docs/BookmarkAddRequest.md)
 - [TwitterClient::BookmarkMutationResponse](docs/BookmarkMutationResponse.md)
 - [TwitterClient::BookmarkMutationResponseData](docs/BookmarkMutationResponseData.md)
 - [TwitterClient::CashtagEntity](docs/CashtagEntity.md)
 - [TwitterClient::CashtagFields](docs/CashtagFields.md)
 - [TwitterClient::ClientDisconnectedProblem](docs/ClientDisconnectedProblem.md)
 - [TwitterClient::ClientForbiddenProblem](docs/ClientForbiddenProblem.md)
 - [TwitterClient::ClientForbiddenProblemAllOf](docs/ClientForbiddenProblemAllOf.md)
 - [TwitterClient::ComplianceJob](docs/ComplianceJob.md)
 - [TwitterClient::ComplianceJobStatus](docs/ComplianceJobStatus.md)
 - [TwitterClient::ComplianceJobType](docs/ComplianceJobType.md)
 - [TwitterClient::ConflictProblem](docs/ConflictProblem.md)
 - [TwitterClient::ConnectionExceptionProblem](docs/ConnectionExceptionProblem.md)
 - [TwitterClient::ConnectionExceptionProblemAllOf](docs/ConnectionExceptionProblemAllOf.md)
 - [TwitterClient::ContextAnnotation](docs/ContextAnnotation.md)
 - [TwitterClient::ContextAnnotationDomainFields](docs/ContextAnnotationDomainFields.md)
 - [TwitterClient::ContextAnnotationEntityFields](docs/ContextAnnotationEntityFields.md)
 - [TwitterClient::CreateComplianceJobRequest](docs/CreateComplianceJobRequest.md)
 - [TwitterClient::CreateComplianceJobResponse](docs/CreateComplianceJobResponse.md)
 - [TwitterClient::DeleteRulesRequest](docs/DeleteRulesRequest.md)
 - [TwitterClient::DeleteRulesRequestDelete](docs/DeleteRulesRequestDelete.md)
 - [TwitterClient::DisallowedResourceProblem](docs/DisallowedResourceProblem.md)
 - [TwitterClient::DisallowedResourceProblemAllOf](docs/DisallowedResourceProblemAllOf.md)
 - [TwitterClient::DuplicateRuleProblem](docs/DuplicateRuleProblem.md)
 - [TwitterClient::DuplicateRuleProblemAllOf](docs/DuplicateRuleProblemAllOf.md)
 - [TwitterClient::EntityIndicesInclusiveExclusive](docs/EntityIndicesInclusiveExclusive.md)
 - [TwitterClient::EntityIndicesInclusiveInclusive](docs/EntityIndicesInclusiveInclusive.md)
 - [TwitterClient::Error](docs/Error.md)
 - [TwitterClient::Expansions](docs/Expansions.md)
 - [TwitterClient::FieldUnauthorizedProblem](docs/FieldUnauthorizedProblem.md)
 - [TwitterClient::FieldUnauthorizedProblemAllOf](docs/FieldUnauthorizedProblemAllOf.md)
 - [TwitterClient::FilteredStreamingTweetResponse](docs/FilteredStreamingTweetResponse.md)
 - [TwitterClient::FilteredStreamingTweetResponseMatchingRulesInner](docs/FilteredStreamingTweetResponseMatchingRulesInner.md)
 - [TwitterClient::FullTextEntities](docs/FullTextEntities.md)
 - [TwitterClient::FullTextEntitiesAnnotationsInner](docs/FullTextEntitiesAnnotationsInner.md)
 - [TwitterClient::FullTextEntitiesAnnotationsInnerAllOf](docs/FullTextEntitiesAnnotationsInnerAllOf.md)
 - [TwitterClient::GenericProblem](docs/GenericProblem.md)
 - [TwitterClient::Geo](docs/Geo.md)
 - [TwitterClient::Get2ComplianceJobsIdResponse](docs/Get2ComplianceJobsIdResponse.md)
 - [TwitterClient::Get2ComplianceJobsResponse](docs/Get2ComplianceJobsResponse.md)
 - [TwitterClient::Get2ComplianceJobsResponseMeta](docs/Get2ComplianceJobsResponseMeta.md)
 - [TwitterClient::Get2ListsIdFollowersResponse](docs/Get2ListsIdFollowersResponse.md)
 - [TwitterClient::Get2ListsIdFollowersResponseMeta](docs/Get2ListsIdFollowersResponseMeta.md)
 - [TwitterClient::Get2ListsIdMembersResponse](docs/Get2ListsIdMembersResponse.md)
 - [TwitterClient::Get2ListsIdResponse](docs/Get2ListsIdResponse.md)
 - [TwitterClient::Get2ListsIdTweetsResponse](docs/Get2ListsIdTweetsResponse.md)
 - [TwitterClient::Get2SpacesByCreatorIdsResponse](docs/Get2SpacesByCreatorIdsResponse.md)
 - [TwitterClient::Get2SpacesIdBuyersResponse](docs/Get2SpacesIdBuyersResponse.md)
 - [TwitterClient::Get2SpacesIdResponse](docs/Get2SpacesIdResponse.md)
 - [TwitterClient::Get2SpacesIdTweetsResponse](docs/Get2SpacesIdTweetsResponse.md)
 - [TwitterClient::Get2SpacesResponse](docs/Get2SpacesResponse.md)
 - [TwitterClient::Get2SpacesSearchResponse](docs/Get2SpacesSearchResponse.md)
 - [TwitterClient::Get2TweetsCountsAllResponse](docs/Get2TweetsCountsAllResponse.md)
 - [TwitterClient::Get2TweetsCountsAllResponseMeta](docs/Get2TweetsCountsAllResponseMeta.md)
 - [TwitterClient::Get2TweetsCountsRecentResponse](docs/Get2TweetsCountsRecentResponse.md)
 - [TwitterClient::Get2TweetsFirehoseStreamResponse](docs/Get2TweetsFirehoseStreamResponse.md)
 - [TwitterClient::Get2TweetsIdLikingUsersResponse](docs/Get2TweetsIdLikingUsersResponse.md)
 - [TwitterClient::Get2TweetsIdQuoteTweetsResponse](docs/Get2TweetsIdQuoteTweetsResponse.md)
 - [TwitterClient::Get2TweetsIdQuoteTweetsResponseMeta](docs/Get2TweetsIdQuoteTweetsResponseMeta.md)
 - [TwitterClient::Get2TweetsIdResponse](docs/Get2TweetsIdResponse.md)
 - [TwitterClient::Get2TweetsIdRetweetedByResponse](docs/Get2TweetsIdRetweetedByResponse.md)
 - [TwitterClient::Get2TweetsResponse](docs/Get2TweetsResponse.md)
 - [TwitterClient::Get2TweetsSample10StreamResponse](docs/Get2TweetsSample10StreamResponse.md)
 - [TwitterClient::Get2TweetsSampleStreamResponse](docs/Get2TweetsSampleStreamResponse.md)
 - [TwitterClient::Get2TweetsSearchAllResponse](docs/Get2TweetsSearchAllResponse.md)
 - [TwitterClient::Get2TweetsSearchAllResponseMeta](docs/Get2TweetsSearchAllResponseMeta.md)
 - [TwitterClient::Get2TweetsSearchRecentResponse](docs/Get2TweetsSearchRecentResponse.md)
 - [TwitterClient::Get2TweetsSearchStreamResponse](docs/Get2TweetsSearchStreamResponse.md)
 - [TwitterClient::Get2UsersByResponse](docs/Get2UsersByResponse.md)
 - [TwitterClient::Get2UsersByUsernameUsernameResponse](docs/Get2UsersByUsernameUsernameResponse.md)
 - [TwitterClient::Get2UsersIdBlockingResponse](docs/Get2UsersIdBlockingResponse.md)
 - [TwitterClient::Get2UsersIdBookmarksResponse](docs/Get2UsersIdBookmarksResponse.md)
 - [TwitterClient::Get2UsersIdFollowedListsResponse](docs/Get2UsersIdFollowedListsResponse.md)
 - [TwitterClient::Get2UsersIdFollowersResponse](docs/Get2UsersIdFollowersResponse.md)
 - [TwitterClient::Get2UsersIdFollowingResponse](docs/Get2UsersIdFollowingResponse.md)
 - [TwitterClient::Get2UsersIdLikedTweetsResponse](docs/Get2UsersIdLikedTweetsResponse.md)
 - [TwitterClient::Get2UsersIdListMembershipsResponse](docs/Get2UsersIdListMembershipsResponse.md)
 - [TwitterClient::Get2UsersIdMentionsResponse](docs/Get2UsersIdMentionsResponse.md)
 - [TwitterClient::Get2UsersIdMentionsResponseMeta](docs/Get2UsersIdMentionsResponseMeta.md)
 - [TwitterClient::Get2UsersIdMutingResponse](docs/Get2UsersIdMutingResponse.md)
 - [TwitterClient::Get2UsersIdOwnedListsResponse](docs/Get2UsersIdOwnedListsResponse.md)
 - [TwitterClient::Get2UsersIdPinnedListsResponse](docs/Get2UsersIdPinnedListsResponse.md)
 - [TwitterClient::Get2UsersIdResponse](docs/Get2UsersIdResponse.md)
 - [TwitterClient::Get2UsersIdTimelinesReverseChronologicalResponse](docs/Get2UsersIdTimelinesReverseChronologicalResponse.md)
 - [TwitterClient::Get2UsersIdTweetsResponse](docs/Get2UsersIdTweetsResponse.md)
 - [TwitterClient::Get2UsersMeResponse](docs/Get2UsersMeResponse.md)
 - [TwitterClient::Get2UsersResponse](docs/Get2UsersResponse.md)
 - [TwitterClient::HashtagEntity](docs/HashtagEntity.md)
 - [TwitterClient::HashtagFields](docs/HashtagFields.md)
 - [TwitterClient::InvalidRequestProblem](docs/InvalidRequestProblem.md)
 - [TwitterClient::InvalidRequestProblemAllOf](docs/InvalidRequestProblemAllOf.md)
 - [TwitterClient::InvalidRequestProblemAllOfErrors](docs/InvalidRequestProblemAllOfErrors.md)
 - [TwitterClient::InvalidRuleProblem](docs/InvalidRuleProblem.md)
 - [TwitterClient::List](docs/List.md)
 - [TwitterClient::ListAddUserRequest](docs/ListAddUserRequest.md)
 - [TwitterClient::ListCreateRequest](docs/ListCreateRequest.md)
 - [TwitterClient::ListCreateResponse](docs/ListCreateResponse.md)
 - [TwitterClient::ListCreateResponseData](docs/ListCreateResponseData.md)
 - [TwitterClient::ListDeleteResponse](docs/ListDeleteResponse.md)
 - [TwitterClient::ListDeleteResponseData](docs/ListDeleteResponseData.md)
 - [TwitterClient::ListFollowedRequest](docs/ListFollowedRequest.md)
 - [TwitterClient::ListFollowedResponse](docs/ListFollowedResponse.md)
 - [TwitterClient::ListFollowedResponseData](docs/ListFollowedResponseData.md)
 - [TwitterClient::ListMutateResponse](docs/ListMutateResponse.md)
 - [TwitterClient::ListMutateResponseData](docs/ListMutateResponseData.md)
 - [TwitterClient::ListPinnedRequest](docs/ListPinnedRequest.md)
 - [TwitterClient::ListPinnedResponse](docs/ListPinnedResponse.md)
 - [TwitterClient::ListPinnedResponseData](docs/ListPinnedResponseData.md)
 - [TwitterClient::ListUnpinResponse](docs/ListUnpinResponse.md)
 - [TwitterClient::ListUpdateRequest](docs/ListUpdateRequest.md)
 - [TwitterClient::ListUpdateResponse](docs/ListUpdateResponse.md)
 - [TwitterClient::ListUpdateResponseData](docs/ListUpdateResponseData.md)
 - [TwitterClient::Media](docs/Media.md)
 - [TwitterClient::MentionEntity](docs/MentionEntity.md)
 - [TwitterClient::MentionFields](docs/MentionFields.md)
 - [TwitterClient::MuteUserMutationResponse](docs/MuteUserMutationResponse.md)
 - [TwitterClient::MuteUserMutationResponseData](docs/MuteUserMutationResponseData.md)
 - [TwitterClient::MuteUserRequest](docs/MuteUserRequest.md)
 - [TwitterClient::NonCompliantRulesProblem](docs/NonCompliantRulesProblem.md)
 - [TwitterClient::OperationalDisconnectProblem](docs/OperationalDisconnectProblem.md)
 - [TwitterClient::OperationalDisconnectProblemAllOf](docs/OperationalDisconnectProblemAllOf.md)
 - [TwitterClient::Photo](docs/Photo.md)
 - [TwitterClient::PhotoAllOf](docs/PhotoAllOf.md)
 - [TwitterClient::Place](docs/Place.md)
 - [TwitterClient::PlaceType](docs/PlaceType.md)
 - [TwitterClient::Point](docs/Point.md)
 - [TwitterClient::Poll](docs/Poll.md)
 - [TwitterClient::PollOption](docs/PollOption.md)
 - [TwitterClient::Problem](docs/Problem.md)
 - [TwitterClient::ReplySettings](docs/ReplySettings.md)
 - [TwitterClient::ResourceNotFoundProblem](docs/ResourceNotFoundProblem.md)
 - [TwitterClient::ResourceNotFoundProblemAllOf](docs/ResourceNotFoundProblemAllOf.md)
 - [TwitterClient::ResourceUnauthorizedProblem](docs/ResourceUnauthorizedProblem.md)
 - [TwitterClient::ResourceUnauthorizedProblemAllOf](docs/ResourceUnauthorizedProblemAllOf.md)
 - [TwitterClient::ResourceUnavailableProblem](docs/ResourceUnavailableProblem.md)
 - [TwitterClient::ResourceUnavailableProblemAllOf](docs/ResourceUnavailableProblemAllOf.md)
 - [TwitterClient::Rule](docs/Rule.md)
 - [TwitterClient::RuleNoId](docs/RuleNoId.md)
 - [TwitterClient::RulesCapProblem](docs/RulesCapProblem.md)
 - [TwitterClient::RulesLookupResponse](docs/RulesLookupResponse.md)
 - [TwitterClient::RulesRequestSummary](docs/RulesRequestSummary.md)
 - [TwitterClient::RulesRequestSummaryOneOf](docs/RulesRequestSummaryOneOf.md)
 - [TwitterClient::RulesRequestSummaryOneOf1](docs/RulesRequestSummaryOneOf1.md)
 - [TwitterClient::RulesResponseMetadata](docs/RulesResponseMetadata.md)
 - [TwitterClient::SearchCount](docs/SearchCount.md)
 - [TwitterClient::Space](docs/Space.md)
 - [TwitterClient::SpaceTopicsInner](docs/SpaceTopicsInner.md)
 - [TwitterClient::StreamingTweetResponse](docs/StreamingTweetResponse.md)
 - [TwitterClient::Topic](docs/Topic.md)
 - [TwitterClient::Tweet](docs/Tweet.md)
 - [TwitterClient::TweetAttachments](docs/TweetAttachments.md)
 - [TwitterClient::TweetComplianceData](docs/TweetComplianceData.md)
 - [TwitterClient::TweetComplianceSchema](docs/TweetComplianceSchema.md)
 - [TwitterClient::TweetComplianceSchemaTweet](docs/TweetComplianceSchemaTweet.md)
 - [TwitterClient::TweetComplianceStreamResponse](docs/TweetComplianceStreamResponse.md)
 - [TwitterClient::TweetComplianceStreamResponseOneOf](docs/TweetComplianceStreamResponseOneOf.md)
 - [TwitterClient::TweetComplianceStreamResponseOneOf1](docs/TweetComplianceStreamResponseOneOf1.md)
 - [TwitterClient::TweetCreateRequest](docs/TweetCreateRequest.md)
 - [TwitterClient::TweetCreateRequestGeo](docs/TweetCreateRequestGeo.md)
 - [TwitterClient::TweetCreateRequestMedia](docs/TweetCreateRequestMedia.md)
 - [TwitterClient::TweetCreateRequestPoll](docs/TweetCreateRequestPoll.md)
 - [TwitterClient::TweetCreateRequestReply](docs/TweetCreateRequestReply.md)
 - [TwitterClient::TweetCreateResponse](docs/TweetCreateResponse.md)
 - [TwitterClient::TweetCreateResponseData](docs/TweetCreateResponseData.md)
 - [TwitterClient::TweetDeleteComplianceSchema](docs/TweetDeleteComplianceSchema.md)
 - [TwitterClient::TweetDeleteResponse](docs/TweetDeleteResponse.md)
 - [TwitterClient::TweetDeleteResponseData](docs/TweetDeleteResponseData.md)
 - [TwitterClient::TweetDropComplianceSchema](docs/TweetDropComplianceSchema.md)
 - [TwitterClient::TweetEditComplianceObjectSchema](docs/TweetEditComplianceObjectSchema.md)
 - [TwitterClient::TweetEditComplianceObjectSchemaTweet](docs/TweetEditComplianceObjectSchemaTweet.md)
 - [TwitterClient::TweetEditComplianceSchema](docs/TweetEditComplianceSchema.md)
 - [TwitterClient::TweetEditControls](docs/TweetEditControls.md)
 - [TwitterClient::TweetGeo](docs/TweetGeo.md)
 - [TwitterClient::TweetHideRequest](docs/TweetHideRequest.md)
 - [TwitterClient::TweetHideResponse](docs/TweetHideResponse.md)
 - [TwitterClient::TweetHideResponseData](docs/TweetHideResponseData.md)
 - [TwitterClient::TweetLabelData](docs/TweetLabelData.md)
 - [TwitterClient::TweetLabelStreamResponse](docs/TweetLabelStreamResponse.md)
 - [TwitterClient::TweetLabelStreamResponseOneOf](docs/TweetLabelStreamResponseOneOf.md)
 - [TwitterClient::TweetNonPublicMetrics](docs/TweetNonPublicMetrics.md)
 - [TwitterClient::TweetNotice](docs/TweetNotice.md)
 - [TwitterClient::TweetNoticeSchema](docs/TweetNoticeSchema.md)
 - [TwitterClient::TweetOrganicMetrics](docs/TweetOrganicMetrics.md)
 - [TwitterClient::TweetPromotedMetrics](docs/TweetPromotedMetrics.md)
 - [TwitterClient::TweetPublicMetrics](docs/TweetPublicMetrics.md)
 - [TwitterClient::TweetReferencedTweetsInner](docs/TweetReferencedTweetsInner.md)
 - [TwitterClient::TweetTakedownComplianceSchema](docs/TweetTakedownComplianceSchema.md)
 - [TwitterClient::TweetUndropComplianceSchema](docs/TweetUndropComplianceSchema.md)
 - [TwitterClient::TweetUnviewable](docs/TweetUnviewable.md)
 - [TwitterClient::TweetUnviewableSchema](docs/TweetUnviewableSchema.md)
 - [TwitterClient::TweetWithheld](docs/TweetWithheld.md)
 - [TwitterClient::TweetWithheldComplianceSchema](docs/TweetWithheldComplianceSchema.md)
 - [TwitterClient::UnsupportedAuthenticationProblem](docs/UnsupportedAuthenticationProblem.md)
 - [TwitterClient::UrlEntity](docs/UrlEntity.md)
 - [TwitterClient::UrlFields](docs/UrlFields.md)
 - [TwitterClient::UrlImage](docs/UrlImage.md)
 - [TwitterClient::UsageCapExceededProblem](docs/UsageCapExceededProblem.md)
 - [TwitterClient::UsageCapExceededProblemAllOf](docs/UsageCapExceededProblemAllOf.md)
 - [TwitterClient::User](docs/User.md)
 - [TwitterClient::UserComplianceData](docs/UserComplianceData.md)
 - [TwitterClient::UserComplianceSchema](docs/UserComplianceSchema.md)
 - [TwitterClient::UserComplianceSchemaUser](docs/UserComplianceSchemaUser.md)
 - [TwitterClient::UserComplianceStreamResponse](docs/UserComplianceStreamResponse.md)
 - [TwitterClient::UserComplianceStreamResponseOneOf](docs/UserComplianceStreamResponseOneOf.md)
 - [TwitterClient::UserDeleteComplianceSchema](docs/UserDeleteComplianceSchema.md)
 - [TwitterClient::UserEntities](docs/UserEntities.md)
 - [TwitterClient::UserEntitiesUrl](docs/UserEntitiesUrl.md)
 - [TwitterClient::UserProfileModificationComplianceSchema](docs/UserProfileModificationComplianceSchema.md)
 - [TwitterClient::UserProfileModificationObjectSchema](docs/UserProfileModificationObjectSchema.md)
 - [TwitterClient::UserProtectComplianceSchema](docs/UserProtectComplianceSchema.md)
 - [TwitterClient::UserPublicMetrics](docs/UserPublicMetrics.md)
 - [TwitterClient::UserScrubGeoObjectSchema](docs/UserScrubGeoObjectSchema.md)
 - [TwitterClient::UserScrubGeoSchema](docs/UserScrubGeoSchema.md)
 - [TwitterClient::UserSuspendComplianceSchema](docs/UserSuspendComplianceSchema.md)
 - [TwitterClient::UserTakedownComplianceSchema](docs/UserTakedownComplianceSchema.md)
 - [TwitterClient::UserUndeleteComplianceSchema](docs/UserUndeleteComplianceSchema.md)
 - [TwitterClient::UserUnprotectComplianceSchema](docs/UserUnprotectComplianceSchema.md)
 - [TwitterClient::UserUnsuspendComplianceSchema](docs/UserUnsuspendComplianceSchema.md)
 - [TwitterClient::UserWithheld](docs/UserWithheld.md)
 - [TwitterClient::UserWithheldComplianceSchema](docs/UserWithheldComplianceSchema.md)
 - [TwitterClient::UsersFollowingCreateRequest](docs/UsersFollowingCreateRequest.md)
 - [TwitterClient::UsersFollowingCreateResponse](docs/UsersFollowingCreateResponse.md)
 - [TwitterClient::UsersFollowingCreateResponseData](docs/UsersFollowingCreateResponseData.md)
 - [TwitterClient::UsersFollowingDeleteResponse](docs/UsersFollowingDeleteResponse.md)
 - [TwitterClient::UsersLikesCreateRequest](docs/UsersLikesCreateRequest.md)
 - [TwitterClient::UsersLikesCreateResponse](docs/UsersLikesCreateResponse.md)
 - [TwitterClient::UsersLikesCreateResponseData](docs/UsersLikesCreateResponseData.md)
 - [TwitterClient::UsersLikesDeleteResponse](docs/UsersLikesDeleteResponse.md)
 - [TwitterClient::UsersRetweetsCreateRequest](docs/UsersRetweetsCreateRequest.md)
 - [TwitterClient::UsersRetweetsCreateResponse](docs/UsersRetweetsCreateResponse.md)
 - [TwitterClient::UsersRetweetsCreateResponseData](docs/UsersRetweetsCreateResponseData.md)
 - [TwitterClient::UsersRetweetsDeleteResponse](docs/UsersRetweetsDeleteResponse.md)
 - [TwitterClient::Variant](docs/Variant.md)
 - [TwitterClient::Video](docs/Video.md)
 - [TwitterClient::VideoAllOf](docs/VideoAllOf.md)
 - [TwitterClient::VideoAllOfNonPublicMetrics](docs/VideoAllOfNonPublicMetrics.md)
 - [TwitterClient::VideoAllOfOrganicMetrics](docs/VideoAllOfOrganicMetrics.md)
 - [TwitterClient::VideoAllOfPromotedMetrics](docs/VideoAllOfPromotedMetrics.md)
 - [TwitterClient::VideoAllOfPublicMetrics](docs/VideoAllOfPublicMetrics.md)


## Documentation for Authorization


### BearerToken

- **Type**: Bearer authentication

### OAuth2UserToken


- **Type**: OAuth
- **Flow**: accessCode
- **Authorization URL**: https://api.twitter.com/2/oauth2/authorize
- **Scopes**: 
  - block.read: Accounts you’ve blocked.
  - block.write: Block and unblock accounts for you.
  - bookmark.read: Allows an app to read bookmarked Tweets
  - bookmark.write: Allows an app to create and delete bookmarks
  - follows.read: People who follow you and people who you follow.
  - follows.write: Follow and unfollow people for you.
  - like.read: Tweets you’ve liked and likes you can view.
  - like.write: Like and un-like Tweets for you.
  - list.read: Lists, list members, and list followers of lists you’ve created or are a member of, including private lists.
  - list.write: Create and manage Lists for you.
  - mute.read: Accounts you’ve muted.
  - mute.write: Mute and unmute accounts for you.
  - offline.access: App can request refresh token.
  - space.read: Access all of the Spaces you can see.
  - tweet.moderate.write: Hide and unhide replies to your Tweets.
  - tweet.read: All the Tweets you can see, including Tweets from protected accounts.
  - tweet.write: Tweet and retweet for you.
  - users.read: Any account you can see, including protected accounts. Any account you can see, including protected accounts.

### UserToken


