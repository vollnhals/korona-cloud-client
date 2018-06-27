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

# Unit tests for KoronaClient::StatisticMapStringRevenueData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'StatisticMapStringRevenueData' do
  before do
    # run before each test
    @instance = KoronaClient::StatisticMapStringRevenueData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of StatisticMapStringRevenueData' do
    it 'should create an instance of StatisticMapStringRevenueData' do
      expect(@instance).to be_instance_of(KoronaClient::StatisticMapStringRevenueData)
    end
  end
  describe 'test attribute "organizational_unit"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "current_period"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "previous_period"' do
    it 'should work' do
       # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

