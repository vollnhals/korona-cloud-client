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
require 'date'

# Unit tests for KoronaClient::ForbiddenError
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ForbiddenError' do
  before do
    # run before each test
    @instance = KoronaClient::ForbiddenError.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ForbiddenError' do
    it 'should create an instance of ForbiddenError' do
      expect(@instance).to be_instance_of(KoronaClient::ForbiddenError)
    end
  end
  describe 'test attribute "message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "code"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["CLOUD_ACCOUNT_DISABLED", "POINT_OF_SALE_NOT_EXTERNAL", "POINT_OF_SALE_NOT_COUPLED", "POINT_OF_SALE_COUPLED_WITH_OTHER_DEVICE", "DELETE_NOT_ALLOWED", "SAVE_OR_UPDATE_NOT_ALLOWED", "ADDITIONAL_CLOUD_PACKAGE_REQUIRED", "ADDITIONAL_API_ACCESS_REQUIRED"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.code = value }.not_to raise_error
       #end
    end
  end

end

