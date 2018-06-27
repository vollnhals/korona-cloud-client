=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

OpenAPI spec version: 3
Contact: support@combase.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaClient::CustomersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'CustomersApi' do
  before do
    # run before each test
    @instance = KoronaClient::CustomersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CustomersApi' do
    it 'should create an instance of CustomersApi' do
      expect(@instance).to be_instance_of(KoronaClient::CustomersApi)
    end
  end

  # unit tests for add_customers
  # adds a batch of new customers
  # 
  # @param korona_account_id the account id
  # @param body a array of new customers
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'add_customers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_customer
  # deletes the customer
  # 
  # @param korona_account_id the account id
  # @param customer_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_customer test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customer
  # lists the customer
  # 
  # @param korona_account_id the account id
  # @param customer_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [Customer]
  describe 'get_customer test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_customers
  # lists all customers
  # 
  # @param korona_account_id the account id
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [BOOLEAN] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @return [ResultListCustomer]
  describe 'get_customers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customer
  # updates the customer
  # 
  # @param korona_account_id the account id
  # @param customer_id_or_number id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param body the properties to update of the customer
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_customer test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_customers
  # changes a batch of customers
  # [number] must be set in the objects, otherwise the object cannot be updated
  # @param korona_account_id the account id
  # @param body a array of existing customers
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_customers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
