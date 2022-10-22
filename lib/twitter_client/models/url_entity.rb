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
  # Represent the portion of text recognized as a URL, and its start and end position within the text.
  class UrlEntity
    # Index (zero-based) at which position this entity ends.  The index is exclusive.
    attr_accessor :_end

    # Index (zero-based) at which position this entity starts.  The index is inclusive.
    attr_accessor :start

    # Description of the URL landing page.
    attr_accessor :description

    # The URL as displayed in the Twitter client.
    attr_accessor :display_url

    # A validly formatted URL.
    attr_accessor :expanded_url

    attr_accessor :images

    # The Media Key identifier for this attachment.
    attr_accessor :media_key

    # HTTP Status Code.
    attr_accessor :status

    # Title of the page the URL points to.
    attr_accessor :title

    # Fully resolved url.
    attr_accessor :unwound_url

    # A validly formatted URL.
    attr_accessor :url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :_end => :end,
        :start => :start,
        :description => :description,
        :display_url => :display_url,
        :expanded_url => :expanded_url,
        :images => :images,
        :media_key => :media_key,
        :status => :status,
        :title => :title,
        :unwound_url => :unwound_url,
        :url => :url
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :_end => :Integer,
        :start => :Integer,
        :description => :String,
        :display_url => :String,
        :expanded_url => :String,
        :images => :'Array<UrlImage>',
        :media_key => :String,
        :status => :Integer,
        :title => :String,
        :unwound_url => :String,
        :url => :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in allOf (OpenAPI v3)
    def self.openapi_all_of
      [
      :EntityIndicesInclusiveExclusive,
      :UrlFields
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `TwitterClient::UrlEntity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `TwitterClient::UrlEntity`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:_end)
        self._end = attributes[:_end]
      end

      if attributes.key?(:start)
        self.start = attributes[:start]
      end

      if attributes.key?(:description)
        self.description = attributes[:description]
      end

      if attributes.key?(:display_url)
        self.display_url = attributes[:display_url]
      end

      if attributes.key?(:expanded_url)
        self.expanded_url = attributes[:expanded_url]
      end

      if attributes.key?(:images)
        if (value = attributes[:images]).is_a?(Array)
          self.images = value
        end
      end

      if attributes.key?(:media_key)
        self.media_key = attributes[:media_key]
      end

      if attributes.key?(:status)
        self.status = attributes[:status]
      end

      if attributes.key?(:title)
        self.title = attributes[:title]
      end

      if attributes.key?(:unwound_url)
        self.unwound_url = attributes[:unwound_url]
      end

      if attributes.key?(:url)
        self.url = attributes[:url]
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @_end.nil?
        invalid_properties.push('invalid value for "_end", _end cannot be nil.')
      end

      if @_end < 0
        invalid_properties.push('invalid value for "_end", must be greater than or equal to 0.')
      end

      if @start.nil?
        invalid_properties.push('invalid value for "start", start cannot be nil.')
      end

      if @start < 0
        invalid_properties.push('invalid value for "start", must be greater than or equal to 0.')
      end

      if !@images.nil? && @images.length < 1
        invalid_properties.push('invalid value for "images", number of items must be greater than or equal to 1.')
      end

      pattern = Regexp.new(/^([0-9]+)_([0-9]+)$/)
      if !@media_key.nil? && @media_key !~ pattern
        invalid_properties.push("invalid value for \"media_key\", must conform to the pattern #{pattern}.")
      end

      if !@status.nil? && @status > 599
        invalid_properties.push('invalid value for "status", must be smaller than or equal to 599.')
      end

      if !@status.nil? && @status < 100
        invalid_properties.push('invalid value for "status", must be greater than or equal to 100.')
      end

      if @url.nil?
        invalid_properties.push('invalid value for "url", url cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_end.nil?
      return false if @_end < 0
      return false if @start.nil?
      return false if @start < 0
      return false if !@images.nil? && @images.length < 1
      return false if !@media_key.nil? && @media_key !~ Regexp.new(/^([0-9]+)_([0-9]+)$/)
      return false if !@status.nil? && @status > 599
      return false if !@status.nil? && @status < 100
      return false if @url.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _end Value to be assigned
    def _end=(_end)
      if _end.nil?
        fail ArgumentError, '_end cannot be nil'
      end

      if _end < 0
        fail ArgumentError, 'invalid value for "_end", must be greater than or equal to 0.'
      end

      @_end = _end
    end

    # Custom attribute writer method with validation
    # @param [Object] start Value to be assigned
    def start=(start)
      if start.nil?
        fail ArgumentError, 'start cannot be nil'
      end

      if start < 0
        fail ArgumentError, 'invalid value for "start", must be greater than or equal to 0.'
      end

      @start = start
    end

    # Custom attribute writer method with validation
    # @param [Object] images Value to be assigned
    def images=(images)
      if !images.nil? && images.length < 1
        fail ArgumentError, 'invalid value for "images", number of items must be greater than or equal to 1.'
      end

      @images = images
    end

    # Custom attribute writer method with validation
    # @param [Object] media_key Value to be assigned
    def media_key=(media_key)
      pattern = Regexp.new(/^([0-9]+)_([0-9]+)$/)
      if !media_key.nil? && media_key !~ pattern
        fail ArgumentError, "invalid value for \"media_key\", must conform to the pattern #{pattern}."
      end

      @media_key = media_key
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if !status.nil? && status > 599
        fail ArgumentError, 'invalid value for "status", must be smaller than or equal to 599.'
      end

      if !status.nil? && status < 100
        fail ArgumentError, 'invalid value for "status", must be greater than or equal to 100.'
      end

      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          _end == o._end &&
          start == o.start &&
          description == o.description &&
          display_url == o.display_url &&
          expanded_url == o.expanded_url &&
          images == o.images &&
          media_key == o.media_key &&
          status == o.status &&
          title == o.title &&
          unwound_url == o.unwound_url &&
          url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [_end, start, description, display_url, expanded_url, images, media_key, status, title, unwound_url, url].hash
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
