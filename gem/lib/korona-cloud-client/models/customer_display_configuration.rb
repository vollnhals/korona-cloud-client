=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'date'
require 'time'

module KoronaCloudClient
  class CustomerDisplayConfiguration
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    attr_accessor :font_scale

    attr_accessor :name

    attr_accessor :booking_url

    attr_accessor :booking_image_id

    attr_accessor :closed_url

    attr_accessor :closed_text

    attr_accessor :closed_image_id

    attr_accessor :welcome_text

    attr_accessor :welcome_url

    attr_accessor :welcome_image_id

    attr_accessor :graphical_display

    attr_accessor :layout_type

    attr_accessor :theme_color

    attr_accessor :number_length

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
        :'active' => :'active',
        :'id' => :'id',
        :'number' => :'number',
        :'revision' => :'revision',
        :'font_scale' => :'fontScale',
        :'name' => :'name',
        :'booking_url' => :'bookingURl',
        :'booking_image_id' => :'bookingImageId',
        :'closed_url' => :'closedURL',
        :'closed_text' => :'closedText',
        :'closed_image_id' => :'closedImageId',
        :'welcome_text' => :'welcomeText',
        :'welcome_url' => :'welcomeURL',
        :'welcome_image_id' => :'welcomeImageId',
        :'graphical_display' => :'graphicalDisplay',
        :'layout_type' => :'layoutType',
        :'theme_color' => :'themeColor',
        :'number_length' => :'numberLength'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'active' => :'Boolean',
        :'id' => :'String',
        :'number' => :'String',
        :'revision' => :'Integer',
        :'font_scale' => :'Integer',
        :'name' => :'String',
        :'booking_url' => :'String',
        :'booking_image_id' => :'ModelReference',
        :'closed_url' => :'String',
        :'closed_text' => :'String',
        :'closed_image_id' => :'ModelReference',
        :'welcome_text' => :'String',
        :'welcome_url' => :'String',
        :'welcome_image_id' => :'ModelReference',
        :'graphical_display' => :'String',
        :'layout_type' => :'String',
        :'theme_color' => :'String',
        :'number_length' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::CustomerDisplayConfiguration` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::CustomerDisplayConfiguration`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'active')
        self.active = attributes[:'active']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'revision')
        self.revision = attributes[:'revision']
      end

      if attributes.key?(:'font_scale')
        self.font_scale = attributes[:'font_scale']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'booking_url')
        self.booking_url = attributes[:'booking_url']
      end

      if attributes.key?(:'booking_image_id')
        self.booking_image_id = attributes[:'booking_image_id']
      end

      if attributes.key?(:'closed_url')
        self.closed_url = attributes[:'closed_url']
      end

      if attributes.key?(:'closed_text')
        self.closed_text = attributes[:'closed_text']
      end

      if attributes.key?(:'closed_image_id')
        self.closed_image_id = attributes[:'closed_image_id']
      end

      if attributes.key?(:'welcome_text')
        self.welcome_text = attributes[:'welcome_text']
      end

      if attributes.key?(:'welcome_url')
        self.welcome_url = attributes[:'welcome_url']
      end

      if attributes.key?(:'welcome_image_id')
        self.welcome_image_id = attributes[:'welcome_image_id']
      end

      if attributes.key?(:'graphical_display')
        self.graphical_display = attributes[:'graphical_display']
      end

      if attributes.key?(:'layout_type')
        self.layout_type = attributes[:'layout_type']
      end

      if attributes.key?(:'theme_color')
        self.theme_color = attributes[:'theme_color']
      end

      if attributes.key?(:'number_length')
        self.number_length = attributes[:'number_length']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      graphical_display_validator = EnumAttributeValidator.new('String', ["NONE", "DISPLAY_1", "DISPLAY_2"])
      return false unless graphical_display_validator.valid?(@graphical_display)
      layout_type_validator = EnumAttributeValidator.new('String', ["AD_FULL", "AD_FULL_WITH_LINE_DISPLAY", "AD_LEFT", "AD_LEFT_HALF", "AD_NONE", "AD_RIGHT", "AD_RIGHT_HALF"])
      return false unless layout_type_validator.valid?(@layout_type)
      theme_color_validator = EnumAttributeValidator.new('String', ["GREY", "RED", "PINK", "PURPLE", "DEEP_PURPLE", "INDIGO", "BLUE", "LIGHT_BLUE", "CYAN", "TEAL", "GREEN", "LIGHT_GREEN", "LIME", "YELLOW", "AMBER", "ORANGE", "DEEP_ORANGE", "BROWN"])
      return false unless theme_color_validator.valid?(@theme_color)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] graphical_display Object to be assigned
    def graphical_display=(graphical_display)
      validator = EnumAttributeValidator.new('String', ["NONE", "DISPLAY_1", "DISPLAY_2"])
      unless validator.valid?(graphical_display)
        fail ArgumentError, "invalid value for \"graphical_display\", must be one of #{validator.allowable_values}."
      end
      @graphical_display = graphical_display
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] layout_type Object to be assigned
    def layout_type=(layout_type)
      validator = EnumAttributeValidator.new('String', ["AD_FULL", "AD_FULL_WITH_LINE_DISPLAY", "AD_LEFT", "AD_LEFT_HALF", "AD_NONE", "AD_RIGHT", "AD_RIGHT_HALF"])
      unless validator.valid?(layout_type)
        fail ArgumentError, "invalid value for \"layout_type\", must be one of #{validator.allowable_values}."
      end
      @layout_type = layout_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] theme_color Object to be assigned
    def theme_color=(theme_color)
      validator = EnumAttributeValidator.new('String', ["GREY", "RED", "PINK", "PURPLE", "DEEP_PURPLE", "INDIGO", "BLUE", "LIGHT_BLUE", "CYAN", "TEAL", "GREEN", "LIGHT_GREEN", "LIME", "YELLOW", "AMBER", "ORANGE", "DEEP_ORANGE", "BROWN"])
      unless validator.valid?(theme_color)
        fail ArgumentError, "invalid value for \"theme_color\", must be one of #{validator.allowable_values}."
      end
      @theme_color = theme_color
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          active == o.active &&
          id == o.id &&
          number == o.number &&
          revision == o.revision &&
          font_scale == o.font_scale &&
          name == o.name &&
          booking_url == o.booking_url &&
          booking_image_id == o.booking_image_id &&
          closed_url == o.closed_url &&
          closed_text == o.closed_text &&
          closed_image_id == o.closed_image_id &&
          welcome_text == o.welcome_text &&
          welcome_url == o.welcome_url &&
          welcome_image_id == o.welcome_image_id &&
          graphical_display == o.graphical_display &&
          layout_type == o.layout_type &&
          theme_color == o.theme_color &&
          number_length == o.number_length
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, id, number, revision, font_scale, name, booking_url, booking_image_id, closed_url, closed_text, closed_image_id, welcome_text, welcome_url, welcome_image_id, graphical_display, layout_type, theme_color, number_length].hash
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
        klass = KoronaCloudClient.const_get(type)
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
