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

# Unit tests for KoronaClient::KoronaAccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'KoronaAccountApi' do
  before do
    # run before each test
    @instance = KoronaClient::KoronaAccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KoronaAccountApi' do
    it 'should create an instance of KoronaAccountApi' do
      expect(@instance).to be_instance_of(KoronaClient::KoronaAccountApi)
    end
  end

  # unit tests for get_korona_account
  # lists the korona account
  # 
  # @param korona_account_id the account id
  # @param [Hash] opts the optional parameters
  # @return [KoronaAccount]
  describe 'get_korona_account test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
