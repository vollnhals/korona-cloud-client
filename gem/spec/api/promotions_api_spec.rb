=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'spec_helper'
require 'json'

# Unit tests for KoronaCloudClient::PromotionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PromotionsApi' do
  before do
    # run before each test
    @api_instance = KoronaCloudClient::PromotionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PromotionsApi' do
    it 'should create an instance of PromotionsApi' do
      expect(@api_instance).to be_instance_of(KoronaCloudClient::PromotionsApi)
    end
  end

  # unit tests for add_promotions
  # adds a batch of new promotions
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of new promotions
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :upsert when set to true, updates the object instead of generating a already-exists-error
  # @return [Array<AddOrUpdateResult>]
  describe 'add_promotions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_promotion
  # deletes the single promotion
  # @param korona_account_id account id of the KORONA.cloud account
  # @param promotion_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_promotion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_promotions
  # deletes a batch of promotions
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing promotions (id or number  required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'delete_promotions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_promotion
  # returns the single promotion
  # @param korona_account_id account id of the KORONA.cloud account
  # @param promotion_id id of the related object (important: id should match the uuid-format)
  # @param [Hash] opts the optional parameters
  # @return [Promotion]
  describe 'get_promotion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_promotions
  # lists all promotions
  # @param korona_account_id account id of the KORONA.cloud account
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page number of the page to fetch
  # @option opts [Integer] :size amount of objects to return per page
  # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
  # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
  # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
  # @option opts [String] :number number of the related object
  # @return [ResultListPromotion]
  describe 'get_promotions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_promotion
  # updates the single promotion
  # @param korona_account_id account id of the KORONA.cloud account
  # @param promotion_id id of the related object (important: id should match the uuid-format)
  # @param body the properties to update of the promotion
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_promotion test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_promotions
  # updates a batch of promotions
  # @param korona_account_id account id of the KORONA.cloud account
  # @param body array of existing promotions (id or number  required)
  # @param [Hash] opts the optional parameters
  # @return [Array<AddOrUpdateResult>]
  describe 'update_promotions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
