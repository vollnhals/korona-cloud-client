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
require 'date'

# Unit tests for KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCountAmount
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCountAmount do
  let(:instance) { KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCountAmount.new }

  describe 'test an instance of PromotionBenefitExtendedDiscountPositionSelectionCountAmount' do
    it 'should create an instance of PromotionBenefitExtendedDiscountPositionSelectionCountAmount' do
      expect(instance).to be_instance_of(KoronaCloudClient::PromotionBenefitExtendedDiscountPositionSelectionCountAmount)
    end
  end
  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ALL", "AMOUNT", "PRICE", "UP_TO_AMOUNT", "UP_TO_PRICE"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
