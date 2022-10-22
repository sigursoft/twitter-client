=begin
#Twitter API v2

#Twitter API v2 available endpoints

The version of the OpenAPI document: 2.54

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'date'
require 'time'

module TwitterClient
  class Tweet
    attr_accessor :attachments

    # Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :author_id

    attr_accessor :context_annotations

    # Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :conversation_id

    # Creation time of the Tweet.
    attr_accessor :created_at

    attr_accessor :edit_controls

    # A list of Tweet Ids in this Tweet chain.
    attr_accessor :edit_history_tweet_ids

    attr_accessor :entities

    attr_accessor :geo

    # Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :id

    # Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :in_reply_to_user_id

    # Language of the Tweet, if detected by Twitter. Returned as a BCP47 language tag.
    attr_accessor :lang

    attr_accessor :non_public_metrics

    attr_accessor :organic_metrics

    # Indicates if this Tweet contains URLs marked as sensitive, for example content suitable for mature audiences.
    attr_accessor :possibly_sensitive

    attr_accessor :promoted_metrics

    attr_accessor :public_metrics

    # A list of Tweets this Tweet refers to. For example, if the parent Tweet is a Retweet, a Quoted Tweet or a Reply, it will include the related Tweet referenced to by its parent.
    attr_accessor :referenced_tweets

    attr_accessor :reply_settings

    # The name of the app the user Tweeted from.
    attr_accessor :source

    # The content of the Tweet.
    attr_accessor :text

    attr_accessor :withheld

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'attachments' => :'attachments',
        :'author_id' => :'author_id',
        :'context_annotations' => :'context_annotations',
        :'conversation_id' => :'conversation_id',
        :'created_at' => :'created_at',
        :'edit_controls' => :'edit_controls',
        :'edit_history_tweet_ids' => :'edit_history_tweet_ids',
        :'entities' => :'entities',
        :'geo' => :'geo',
        :'id' => :'id',
        :'in_reply_to_user_id' => :'in_reply_to_user_id',
        :'lang' => :'lang',
        :'non_public_metrics' => :'non_public_metrics',
        :'organic_metrics' => :'organic_metrics',
        :'possibly_sensitive' => :'possibly_sensitive',
        :'promoted_metrics' => :'promoted_metrics',
        :'public_metrics' => :'public_metrics',
        :'referenced_tweets' => :'referenced_tweets',
        :'reply_settings' => :'reply_settings',
        :'source' => :'source',
        :'text' => :'text',
        :'withheld' => :'withheld'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'attachments' => :'TweetAttachments',
        :'author_id' => :'String',
        :'context_annotations' => :'Array<ContextAnnotation>',
        :'conversation_id' => :'String',
        :'created_at' => :'Time',
        :'edit_controls' => :'TweetEditControls',
        :'edit_history_tweet_ids' => :'Array<String>',
        :'entities' => :'FullTextEntities',
        :'geo' => :'TweetGeo',
        :'id' => :'String',
        :'in_reply_to_user_id' => :'String',
        :'lang' => :'String',
        :'non_public_metrics' => :'TweetNonPublicMetrics',
        :'organic_metrics' => :'TweetOrganicMetrics',
        :'possibly_sensitive' => :'Boolean',
        :'promoted_metrics' => :'TweetPromotedMetrics',
        :'public_metrics' => :'TweetPublicMetrics',
        :'referenced_tweets' => :'Array<TweetReferencedTweetsInner>',
        :'reply_settings' => :'ReplySettings',
        :'source' => :'String',
        :'text' => :'String',
        :'withheld' => :'TweetWithheld'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TwitterClient::Tweet` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TwitterClient::Tweet`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'attachments')
        self.attachments = attributes[:'attachments']
      end

      if attributes.key?(:'author_id')
        self.author_id = attributes[:'author_id']
      end

      if attributes.key?(:'context_annotations')
        if (value = attributes[:'context_annotations']).is_a?(Array)
          self.context_annotations = value
        end
      end

      if attributes.key?(:'conversation_id')
        self.conversation_id = attributes[:'conversation_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'edit_controls')
        self.edit_controls = attributes[:'edit_controls']
      end

      if attributes.key?(:'edit_history_tweet_ids')
        if (value = attributes[:'edit_history_tweet_ids']).is_a?(Array)
          self.edit_history_tweet_ids = value
        end
      end

      if attributes.key?(:'entities')
        self.entities = attributes[:'entities']
      end

      if attributes.key?(:'geo')
        self.geo = attributes[:'geo']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'in_reply_to_user_id')
        self.in_reply_to_user_id = attributes[:'in_reply_to_user_id']
      end

      if attributes.key?(:'lang')
        self.lang = attributes[:'lang']
      end

      if attributes.key?(:'non_public_metrics')
        self.non_public_metrics = attributes[:'non_public_metrics']
      end

      if attributes.key?(:'organic_metrics')
        self.organic_metrics = attributes[:'organic_metrics']
      end

      if attributes.key?(:'possibly_sensitive')
        self.possibly_sensitive = attributes[:'possibly_sensitive']
      end

      if attributes.key?(:'promoted_metrics')
        self.promoted_metrics = attributes[:'promoted_metrics']
      end

      if attributes.key?(:'public_metrics')
        self.public_metrics = attributes[:'public_metrics']
      end

      if attributes.key?(:'referenced_tweets')
        if (value = attributes[:'referenced_tweets']).is_a?(Array)
          self.referenced_tweets = value
        end
      end

      if attributes.key?(:'reply_settings')
        self.reply_settings = attributes[:'reply_settings']
      end

      if attributes.key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.key?(:'withheld')
        self.withheld = attributes[:'withheld']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !@author_id.nil? && @author_id !~ pattern
        invalid_properties.push("invalid value for \"author_id\", must conform to the pattern #{pattern}.")
      end

      if !@context_annotations.nil? && @context_annotations.length < 1
        invalid_properties.push('invalid value for "context_annotations", number of items must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !@conversation_id.nil? && @conversation_id !~ pattern
        invalid_properties.push("invalid value for \"conversation_id\", must conform to the pattern #{pattern}.")
      end

      if @edit_history_tweet_ids.nil?
        invalid_properties.push('invalid value for "edit_history_tweet_ids", edit_history_tweet_ids cannot be nil.')
      end

      if @edit_history_tweet_ids.length < 1
        invalid_properties.push('invalid value for "edit_history_tweet_ids", number of items must be greater than or equal to 1.')
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !@in_reply_to_user_id.nil? && @in_reply_to_user_id !~ pattern
        invalid_properties.push("invalid value for \"in_reply_to_user_id\", must conform to the pattern #{pattern}.")
      end

      if !@referenced_tweets.nil? && @referenced_tweets.length < 1
        invalid_properties.push('invalid value for "referenced_tweets", number of items must be greater than or equal to 1.')
      end

      if @text.nil?
        invalid_properties.push('invalid value for "text", text cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@author_id.nil? && @author_id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if !@context_annotations.nil? && @context_annotations.length < 1
      return false if !@conversation_id.nil? && @conversation_id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if @edit_history_tweet_ids.nil?
      return false if @edit_history_tweet_ids.length < 1
      return false if @id.nil?
      return false if @id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if !@in_reply_to_user_id.nil? && @in_reply_to_user_id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if !@referenced_tweets.nil? && @referenced_tweets.length < 1
      return false if @text.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] author_id Value to be assigned
    def author_id=(author_id)
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !author_id.nil? && author_id !~ pattern
        fail ArgumentError, "invalid value for \"author_id\", must conform to the pattern #{pattern}."
      end

      @author_id = author_id
    end

    # Custom attribute writer method with validation
    # @param [Object] context_annotations Value to be assigned
    def context_annotations=(context_annotations)
      if !context_annotations.nil? && context_annotations.length < 1
        fail ArgumentError, 'invalid value for "context_annotations", number of items must be greater than or equal to 1.'
      end

      @context_annotations = context_annotations
    end

    # Custom attribute writer method with validation
    # @param [Object] conversation_id Value to be assigned
    def conversation_id=(conversation_id)
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !conversation_id.nil? && conversation_id !~ pattern
        fail ArgumentError, "invalid value for \"conversation_id\", must conform to the pattern #{pattern}."
      end

      @conversation_id = conversation_id
    end

    # Custom attribute writer method with validation
    # @param [Object] edit_history_tweet_ids Value to be assigned
    def edit_history_tweet_ids=(edit_history_tweet_ids)
      if edit_history_tweet_ids.nil?
        fail ArgumentError, 'edit_history_tweet_ids cannot be nil'
      end

      if edit_history_tweet_ids.length < 1
        fail ArgumentError, 'invalid value for "edit_history_tweet_ids", number of items must be greater than or equal to 1.'
      end

      @edit_history_tweet_ids = edit_history_tweet_ids
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] in_reply_to_user_id Value to be assigned
    def in_reply_to_user_id=(in_reply_to_user_id)
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !in_reply_to_user_id.nil? && in_reply_to_user_id !~ pattern
        fail ArgumentError, "invalid value for \"in_reply_to_user_id\", must conform to the pattern #{pattern}."
      end

      @in_reply_to_user_id = in_reply_to_user_id
    end

    # Custom attribute writer method with validation
    # @param [Object] referenced_tweets Value to be assigned
    def referenced_tweets=(referenced_tweets)
      if !referenced_tweets.nil? && referenced_tweets.length < 1
        fail ArgumentError, 'invalid value for "referenced_tweets", number of items must be greater than or equal to 1.'
      end

      @referenced_tweets = referenced_tweets
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          attachments == o.attachments &&
          author_id == o.author_id &&
          context_annotations == o.context_annotations &&
          conversation_id == o.conversation_id &&
          created_at == o.created_at &&
          edit_controls == o.edit_controls &&
          edit_history_tweet_ids == o.edit_history_tweet_ids &&
          entities == o.entities &&
          geo == o.geo &&
          id == o.id &&
          in_reply_to_user_id == o.in_reply_to_user_id &&
          lang == o.lang &&
          non_public_metrics == o.non_public_metrics &&
          organic_metrics == o.organic_metrics &&
          possibly_sensitive == o.possibly_sensitive &&
          promoted_metrics == o.promoted_metrics &&
          public_metrics == o.public_metrics &&
          referenced_tweets == o.referenced_tweets &&
          reply_settings == o.reply_settings &&
          source == o.source &&
          text == o.text &&
          withheld == o.withheld
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [attachments, author_id, context_annotations, conversation_id, created_at, edit_controls, edit_history_tweet_ids, entities, geo, id, in_reply_to_user_id, lang, non_public_metrics, organic_metrics, possibly_sensitive, promoted_metrics, public_metrics, referenced_tweets, reply_settings, source, text, withheld].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = TwitterClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end