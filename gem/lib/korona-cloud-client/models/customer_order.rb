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
  class CustomerOrder
    # indicates whether the object is active for use or not
    attr_accessor :active

    # global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx)
    attr_accessor :id

    # number of the object, like it is set in backoffice; will be removed when active=false
    attr_accessor :number

    # the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers.
    attr_accessor :revision

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :booking_time

    attr_accessor :cashier

    attr_accessor :comment

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :create_time

    attr_accessor :customer

    attr_accessor :customer_data

    # an empty list will not delete existing deposits and will result in an error
    attr_accessor :deposits

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :finish_time

    attr_accessor :info_texts

    attr_accessor :items

    attr_accessor :organizational_unit

    # Format: yyyy-MM-dd'T'HH:mm:ssXXX
    attr_accessor :pick_up_time

    attr_accessor :point_of_sale

    attr_accessor :ready_for_pick_up

    attr_accessor :warehouse

    attr_accessor :number_length

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'active' => :'active',
        :'id' => :'id',
        :'number' => :'number',
        :'revision' => :'revision',
        :'booking_time' => :'bookingTime',
        :'cashier' => :'cashier',
        :'comment' => :'comment',
        :'create_time' => :'createTime',
        :'customer' => :'customer',
        :'customer_data' => :'customerData',
        :'deposits' => :'deposits',
        :'finish_time' => :'finishTime',
        :'info_texts' => :'infoTexts',
        :'items' => :'items',
        :'organizational_unit' => :'organizationalUnit',
        :'pick_up_time' => :'pickUpTime',
        :'point_of_sale' => :'pointOfSale',
        :'ready_for_pick_up' => :'readyForPickUp',
        :'warehouse' => :'warehouse',
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
        :'booking_time' => :'Time',
        :'cashier' => :'ModelReference',
        :'comment' => :'String',
        :'create_time' => :'Time',
        :'customer' => :'ModelReference',
        :'customer_data' => :'CustomerData',
        :'deposits' => :'Array<Deposit>',
        :'finish_time' => :'Time',
        :'info_texts' => :'Array<String>',
        :'items' => :'Array<CustomerOrderItem>',
        :'organizational_unit' => :'ModelReference',
        :'pick_up_time' => :'Time',
        :'point_of_sale' => :'ModelReference',
        :'ready_for_pick_up' => :'Boolean',
        :'warehouse' => :'ModelReference',
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `KoronaCloudClient::CustomerOrder` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `KoronaCloudClient::CustomerOrder`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'booking_time')
        self.booking_time = attributes[:'booking_time']
      end

      if attributes.key?(:'cashier')
        self.cashier = attributes[:'cashier']
      end

      if attributes.key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.key?(:'create_time')
        self.create_time = attributes[:'create_time']
      end

      if attributes.key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.key?(:'customer_data')
        self.customer_data = attributes[:'customer_data']
      end

      if attributes.key?(:'deposits')
        if (value = attributes[:'deposits']).is_a?(Array)
          self.deposits = value
        end
      end

      if attributes.key?(:'finish_time')
        self.finish_time = attributes[:'finish_time']
      end

      if attributes.key?(:'info_texts')
        if (value = attributes[:'info_texts']).is_a?(Array)
          self.info_texts = value
        end
      end

      if attributes.key?(:'items')
        if (value = attributes[:'items']).is_a?(Array)
          self.items = value
        end
      end

      if attributes.key?(:'organizational_unit')
        self.organizational_unit = attributes[:'organizational_unit']
      end

      if attributes.key?(:'pick_up_time')
        self.pick_up_time = attributes[:'pick_up_time']
      end

      if attributes.key?(:'point_of_sale')
        self.point_of_sale = attributes[:'point_of_sale']
      end

      if attributes.key?(:'ready_for_pick_up')
        self.ready_for_pick_up = attributes[:'ready_for_pick_up']
      end

      if attributes.key?(:'warehouse')
        self.warehouse = attributes[:'warehouse']
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
      true
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
          booking_time == o.booking_time &&
          cashier == o.cashier &&
          comment == o.comment &&
          create_time == o.create_time &&
          customer == o.customer &&
          customer_data == o.customer_data &&
          deposits == o.deposits &&
          finish_time == o.finish_time &&
          info_texts == o.info_texts &&
          items == o.items &&
          organizational_unit == o.organizational_unit &&
          pick_up_time == o.pick_up_time &&
          point_of_sale == o.point_of_sale &&
          ready_for_pick_up == o.ready_for_pick_up &&
          warehouse == o.warehouse &&
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
      [active, id, number, revision, booking_time, cashier, comment, create_time, customer, customer_data, deposits, finish_time, info_texts, items, organizational_unit, pick_up_time, point_of_sale, ready_for_pick_up, warehouse, number_length].hash
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
