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
  class FiscalTransaction
    attr_accessor :error_description

    attr_accessor :failed

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :finish_time

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :first_process_time

    attr_accessor :fiscal_unit

    attr_accessor :number

    attr_accessor :print_link

    attr_accessor :print_qr_code

    attr_accessor :print_texts

    attr_accessor :process_data

    attr_accessor :process_type

    attr_accessor :signature

    attr_accessor :signature_counter

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :start_time

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'error_description' => :'errorDescription',
        :'failed' => :'failed',
        :'finish_time' => :'finishTime',
        :'first_process_time' => :'firstProcessTime',
        :'fiscal_unit' => :'fiscalUnit',
        :'number' => :'number',
        :'print_link' => :'printLink',
        :'print_qr_code' => :'printQrCode',
        :'print_texts' => :'printTexts',
        :'process_data' => :'processData',
        :'process_type' => :'processType',
        :'signature' => :'signature',
        :'signature_counter' => :'signatureCounter',
        :'start_time' => :'startTime'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'error_description' => :'String',
        :'failed' => :'Boolean',
        :'finish_time' => :'Time',
        :'first_process_time' => :'Time',
        :'fiscal_unit' => :'ModelReference',
        :'number' => :'Integer',
        :'print_link' => :'String',
        :'print_qr_code' => :'String',
        :'print_texts' => :'Array<String>',
        :'process_data' => :'String',
        :'process_type' => :'String',
        :'signature' => :'String',
        :'signature_counter' => :'Integer',
        :'start_time' => :'Time'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::FiscalTransaction` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::FiscalTransaction`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'error_description')
        self.error_description = attributes[:'error_description']
      end

      if attributes.key?(:'failed')
        self.failed = attributes[:'failed']
      end

      if attributes.key?(:'finish_time')
        self.finish_time = attributes[:'finish_time']
      end

      if attributes.key?(:'first_process_time')
        self.first_process_time = attributes[:'first_process_time']
      end

      if attributes.key?(:'fiscal_unit')
        self.fiscal_unit = attributes[:'fiscal_unit']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'print_link')
        self.print_link = attributes[:'print_link']
      end

      if attributes.key?(:'print_qr_code')
        self.print_qr_code = attributes[:'print_qr_code']
      end

      if attributes.key?(:'print_texts')
        if (value = attributes[:'print_texts']).is_a?(Array)
          self.print_texts = value
        end
      end

      if attributes.key?(:'process_data')
        self.process_data = attributes[:'process_data']
      end

      if attributes.key?(:'process_type')
        self.process_type = attributes[:'process_type']
      end

      if attributes.key?(:'signature')
        self.signature = attributes[:'signature']
      end

      if attributes.key?(:'signature_counter')
        self.signature_counter = attributes[:'signature_counter']
      end

      if attributes.key?(:'start_time')
        self.start_time = attributes[:'start_time']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      pattern = Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      if !@signature.nil? && @signature !~ pattern
        invalid_properties.push("invalid value for \"signature\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@signature.nil? && @signature !~ Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] signature Value to be assigned
    def signature=(signature)
      pattern = Regexp.new(/^(?:[A-Za-z0-9+\/]{4})*(?:[A-Za-z0-9+\/]{2}==|[A-Za-z0-9+\/]{3}=)?$/)
      if !signature.nil? && signature !~ pattern
        fail ArgumentError, "invalid value for \"signature\", must conform to the pattern #{pattern}."
      end

      @signature = signature
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          error_description == o.error_description &&
          failed == o.failed &&
          finish_time == o.finish_time &&
          first_process_time == o.first_process_time &&
          fiscal_unit == o.fiscal_unit &&
          number == o.number &&
          print_link == o.print_link &&
          print_qr_code == o.print_qr_code &&
          print_texts == o.print_texts &&
          process_data == o.process_data &&
          process_type == o.process_type &&
          signature == o.signature &&
          signature_counter == o.signature_counter &&
          start_time == o.start_time
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [error_description, failed, finish_time, first_process_time, fiscal_unit, number, print_link, print_qr_code, print_texts, process_data, process_type, signature, signature_counter, start_time].hash
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
