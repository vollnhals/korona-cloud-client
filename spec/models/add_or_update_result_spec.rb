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

# Unit tests for KoronaClient::AddOrUpdateResult
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AddOrUpdateResult' do
  before do
    # run before each test
    @instance = KoronaClient::AddOrUpdateResult.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AddOrUpdateResult' do
    it 'should create an instance of AddOrUpdateResult' do
      expect(@instance).to be_instance_of(KoronaClient::AddOrUpdateResult)
    end
  end
  describe 'test attribute "action"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ADDED", "DELETED", "QUEUED", "UPDATED"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.action = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "href"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
       #validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["ERROR", "OK"])
       #validator.allowable_values.each do |value|
       #  expect { @instance.status = value }.not_to raise_error
       #end
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

