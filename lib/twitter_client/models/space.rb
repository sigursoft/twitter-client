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
  # 
  class Space
    # Creation time of the Space.
    attr_accessor :created_at

    # Unique identifier of this User. This is returned as a string in order to avoid complications with languages and tools that cannot handle large integers.
    attr_accessor :creator_id

    # End time of the Space.
    attr_accessor :ended_at

    # The user ids for the hosts of the Space.
    attr_accessor :host_ids

    # The unique identifier of this Space.
    attr_accessor :id

    # An array of user ids for people who were invited to a Space.
    attr_accessor :invited_user_ids

    # Denotes if the Space is a ticketed Space.
    attr_accessor :is_ticketed

    # The language of the Space.
    attr_accessor :lang

    # The number of participants in a Space.
    attr_accessor :participant_count

    # A date time stamp for when a Space is scheduled to begin.
    attr_accessor :scheduled_start

    # An array of user ids for people who were speakers in a Space.
    attr_accessor :speaker_ids

    # When the Space was started as a date string.
    attr_accessor :started_at

    # The current state of the Space.
    attr_accessor :state

    # The number of people who have either purchased a ticket or set a reminder for this Space.
    attr_accessor :subscriber_count

    # The title of the Space.
    attr_accessor :title

    # The topics of a Space, as selected by its creator.
    attr_accessor :topics

    # When the Space was last updated.
    attr_accessor :updated_at

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :created_at => :created_at,
        :creator_id => :creator_id,
        :ended_at => :ended_at,
        :host_ids => :host_ids,
        :id => :id,
        :invited_user_ids => :invited_user_ids,
        :is_ticketed => :is_ticketed,
        :lang => :lang,
        :participant_count => :participant_count,
        :scheduled_start => :scheduled_start,
        :speaker_ids => :speaker_ids,
        :started_at => :started_at,
        :state => :state,
        :subscriber_count => :subscriber_count,
        :title => :title,
        :topics => :topics,
        :updated_at => :updated_at
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
        :creator_id => :String,
        :ended_at => :Time,
        :host_ids => :'Array<String>',
        :id => :String,
        :invited_user_ids => :'Array<String>',
        :is_ticketed => :Boolean,
        :lang => :String,
        :participant_count => :Integer,
        :scheduled_start => :Time,
        :speaker_ids => :'Array<String>',
        :started_at => :Time,
        :state => :String,
        :subscriber_count => :Integer,
        :title => :String,
        :topics => :'Array<SpaceTopicsInner>',
        :updated_at => :Time
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `TwitterClient::Space` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TwitterClient::Space`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:created_at)
        self.created_at = attributes[:created_at]
      end

      if attributes.key?(:creator_id)
        self.creator_id = attributes[:creator_id]
      end

      if attributes.key?(:ended_at)
        self.ended_at = attributes[:ended_at]
      end

      if attributes.key?(:host_ids)
        if (value = attributes[:host_ids]).is_a?(Array)
          self.host_ids = value
        end
      end

      if attributes.key?(:id)
        self.id = attributes[:id]
      end

      if attributes.key?(:invited_user_ids)
        if (value = attributes[:invited_user_ids]).is_a?(Array)
          self.invited_user_ids = value
        end
      end

      if attributes.key?(:is_ticketed)
        self.is_ticketed = attributes[:is_ticketed]
      end

      if attributes.key?(:lang)
        self.lang = attributes[:lang]
      end

      if attributes.key?(:participant_count)
        self.participant_count = attributes[:participant_count]
      end

      if attributes.key?(:scheduled_start)
        self.scheduled_start = attributes[:scheduled_start]
      end

      if attributes.key?(:speaker_ids)
        if (value = attributes[:speaker_ids]).is_a?(Array)
          self.speaker_ids = value
        end
      end

      if attributes.key?(:started_at)
        self.started_at = attributes[:started_at]
      end

      if attributes.key?(:state)
        self.state = attributes[:state]
      end

      if attributes.key?(:subscriber_count)
        self.subscriber_count = attributes[:subscriber_count]
      end

      if attributes.key?(:title)
        self.title = attributes[:title]
      end

      if attributes.key?(:topics)
        if (value = attributes[:topics]).is_a?(Array)
          self.topics = value
        end
      end

      if attributes.key?(:updated_at)
        self.updated_at = attributes[:updated_at]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !@creator_id.nil? && @creator_id !~ pattern
        invalid_properties.push("invalid value for \"creator_id\", must conform to the pattern #{pattern}.")
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{1,13}$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@creator_id.nil? && @creator_id !~ Regexp.new(/^[0-9]{1,19}$/)
      return false if @id.nil?
      return false if @id !~ Regexp.new(/^[a-zA-Z0-9]{1,13}$/)
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["live", "scheduled", "ended"])
      return false unless state_validator.valid?(@state)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] creator_id Value to be assigned
    def creator_id=(creator_id)
      pattern = Regexp.new(/^[0-9]{1,19}$/)
      if !creator_id.nil? && creator_id !~ pattern
        fail ArgumentError, "invalid value for \"creator_id\", must conform to the pattern #{pattern}."
      end

      @creator_id = creator_id
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      pattern = Regexp.new(/^[a-zA-Z0-9]{1,13}$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["live", "scheduled", "ended"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for \"state\", must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          creator_id == o.creator_id &&
          ended_at == o.ended_at &&
          host_ids == o.host_ids &&
          id == o.id &&
          invited_user_ids == o.invited_user_ids &&
          is_ticketed == o.is_ticketed &&
          lang == o.lang &&
          participant_count == o.participant_count &&
          scheduled_start == o.scheduled_start &&
          speaker_ids == o.speaker_ids &&
          started_at == o.started_at &&
          state == o.state &&
          subscriber_count == o.subscriber_count &&
          title == o.title &&
          topics == o.topics &&
          updated_at == o.updated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, creator_id, ended_at, host_ids, id, invited_user_ids, is_ticketed, lang, participant_count, scheduled_start, speaker_ids, started_at, state, subscriber_count, title, topics, updated_at].hash
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
