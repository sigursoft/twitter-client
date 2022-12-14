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
  # The Twitter User object.
  class User
    # Creation time of this User.
    attr_accessor :created_at

    # The text of this User's profile description (also known as bio), if the User provided one.
    attr_accessor :description

    attr_accessor :entities

    # Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :id

    # The location specified in the User's profile, if the User provided one. As this is a freeform value, it may not indicate a valid location, but it may be fuzzily evaluated when performing searches with location queries.
    attr_accessor :location

    # The friendly name of this User, as shown on their profile.
    attr_accessor :name

    # Unique identifier of this Tweet. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :pinned_tweet_id

    # The URL to the profile image for this User.
    attr_accessor :profile_image_url

    # Indicates if this User has chosen to protect their Tweets (in other words, if this User's Tweets are private).
    attr_accessor :protected

    attr_accessor :public_metrics

    # The URL specified in the User's profile.
    attr_accessor :url

    # The Twitter handle (screen name) of this user.
    attr_accessor :username

    # Indicate if this User is a verified Twitter User.
    attr_accessor :verified

    attr_accessor :withheld

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :created_at => :created_at,
        :description => :description,
        :entities => :entities,
        :id => :id,
        :location => :location,
        :name => :name,
        :pinned_tweet_id => :pinned_tweet_id,
        :profile_image_url => :profile_image_url,
        :protected => :protected,
        :public_metrics => :public_metrics,
        :url => :url,
        :username => :username,
        :verified => :verified,
        :withheld => :withheld
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :created_at => :Time,
        :description => :String,
        :entities => :UserEntities,
        :id => :String,
        :location => :String,
        :name => :String,
        :pinned_tweet_id => :String,
        :profile_image_url => :String,
        :protected => :Boolean,
        :public_metrics => :UserPublicMetrics,
        :url => :String,
        :username => :String,
        :verified => :Boolean,
        :withheld => :UserWithheld
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TwitterClient::User` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TwitterClient::User`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:created_at)
        self.created_at = attributes[:created_at]
      end

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      if attributes.key?(:entities)
        self.entities = attributes[:entities]
      end

      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:location)
        self.location = attributes[:location]
      end

      if attributes.key?(:name)
        self.name = attributes[:name]
      end

      if attributes.key?(:pinned_tweet_id)
        self.pinned_tweet_id = attributes[:pinned_tweet_id]
      end

      if attributes.key?(:profile_image_url)
        self.profile_image_url = attributes[:profile_image_url]
      end

      if attributes.key?(:protected)
        self.protected = attributes[:protected]
      end

      if attributes.key?(:public_metrics)
        self.public_metrics = attributes[:public_metrics]
      end

      if attributes.key?(:url)
        self.url = attributes[:url]
      end

      if attributes.key?(:username)
        self.username = attributes[:username]
      end

      if attributes.key?(:verified)
        self.verified = attributes[:verified]
      end

      if attributes.key?(:withheld)
        self.withheld = attributes[:withheld]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !@pinned_tweet_id.nil? && @pinned_tweet_id !~ pattern
        invalid_properties.push("invalid value for \"pinned_tweet_id\", must conform to the pattern #{pattern}.")
      end

      if @username.nil?
        invalid_properties.push('invalid value for "username", username cannot be nil.')
      end

      pattern = Regexp.new(/^[A-Za-z0-9_]{1,15}$/)
      if @username !~ pattern
        invalid_properties.push("invalid value for \"username\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if @name.nil?
      return false if !@pinned_tweet_id.nil? && @pinned_tweet_id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if @username.nil?
      return false if @username !~ Regexp.new(/^[A-Za-z0-9_]{1,15}$/)
      true
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
    # @param [Object] pinned_tweet_id Value to be assigned
    def pinned_tweet_id=(pinned_tweet_id)
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !pinned_tweet_id.nil? && pinned_tweet_id !~ pattern
        fail ArgumentError, "invalid value for \"pinned_tweet_id\", must conform to the pattern #{pattern}."
      end

      @pinned_tweet_id = pinned_tweet_id
    end

    # Custom attribute writer method with validation
    # @param [Object] username Value to be assigned
    def username=(username)
      if username.nil?
        fail ArgumentError, 'username cannot be nil'
      end

      pattern = Regexp.new(/^[A-Za-z0-9_]{1,15}$/)
      if username !~ pattern
        fail ArgumentError, "invalid value for \"username\", must conform to the pattern #{pattern}."
      end

      @username = username
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          description == o.description &&
          entities == o.entities &&
          id == o.id &&
          location == o.location &&
          name == o.name &&
          pinned_tweet_id == o.pinned_tweet_id &&
          profile_image_url == o.profile_image_url &&
          protected == o.protected &&
          public_metrics == o.public_metrics &&
          url == o.url &&
          username == o.username &&
          verified == o.verified &&
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
      [created_at, description, entities, id, location, name, pinned_tweet_id, profile_image_url, protected, public_metrics, url, username, verified, withheld].hash
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
