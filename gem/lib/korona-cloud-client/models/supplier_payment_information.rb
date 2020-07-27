=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.14.7
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'date'

module KoronaCloudClient
  class SupplierPaymentInformation
    attr_accessor :account_number

    attr_accessor :bank

    attr_accessor :bank_number

    attr_accessor :bic

    attr_accessor :creditor_identifier

    attr_accessor :currency

    attr_accessor :iban

    attr_accessor :payment_method

    attr_accessor :minimum_order_value

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
        :'account_number' => :'accountNumber',
        :'bank' => :'bank',
        :'bank_number' => :'bankNumber',
        :'bic' => :'bic',
        :'creditor_identifier' => :'creditorIdentifier',
        :'currency' => :'currency',
        :'iban' => :'iban',
        :'payment_method' => :'paymentMethod',
        :'minimum_order_value' => :'minimumOrderValue'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'account_number' => :'String',
        :'bank' => :'String',
        :'bank_number' => :'String',
        :'bic' => :'String',
        :'creditor_identifier' => :'String',
        :'currency' => :'ModelReference',
        :'iban' => :'String',
        :'payment_method' => :'String',
        :'minimum_order_value' => :'Float'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::SupplierPaymentInformation` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::SupplierPaymentInformation`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'account_number')
        self.account_number = attributes[:'account_number']
      end

      if attributes.key?(:'bank')
        self.bank = attributes[:'bank']
      end

      if attributes.key?(:'bank_number')
        self.bank_number = attributes[:'bank_number']
      end

      if attributes.key?(:'bic')
        self.bic = attributes[:'bic']
      end

      if attributes.key?(:'creditor_identifier')
        self.creditor_identifier = attributes[:'creditor_identifier']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.key?(:'payment_method')
        self.payment_method = attributes[:'payment_method']
      end

      if attributes.key?(:'minimum_order_value')
        self.minimum_order_value = attributes[:'minimum_order_value']
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
      payment_method_validator = EnumAttributeValidator.new('String', ["INVOICE", "PREPAYMENT", "CASH_ON_DELIVERY", "DIRECT_DEBIT"])
      return false unless payment_method_validator.valid?(@payment_method)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method)
      validator = EnumAttributeValidator.new('String', ["INVOICE", "PREPAYMENT", "CASH_ON_DELIVERY", "DIRECT_DEBIT"])
      unless validator.valid?(payment_method)
        fail ArgumentError, "invalid value for \"payment_method\", must be one of #{validator.allowable_values}."
      end
      @payment_method = payment_method
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          account_number == o.account_number &&
          bank == o.bank &&
          bank_number == o.bank_number &&
          bic == o.bic &&
          creditor_identifier == o.creditor_identifier &&
          currency == o.currency &&
          iban == o.iban &&
          payment_method == o.payment_method &&
          minimum_order_value == o.minimum_order_value
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_number, bank, bank_number, bic, creditor_identifier, currency, iban, payment_method, minimum_order_value].hash
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
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
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
        KoronaCloudClient.const_get(type).build_from_hash(value)
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
