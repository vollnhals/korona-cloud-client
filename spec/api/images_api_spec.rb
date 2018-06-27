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

# Unit tests for KoronaClient::ImagesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ImagesApi' do
  before do
    # run before each test
    @instance = KoronaClient::ImagesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ImagesApi' do
    it 'should create an instance of ImagesApi' do
      expect(@instance).to be_instance_of(KoronaClient::ImagesApi)
    end
  end

  # unit tests for get_image
  # displays the image
  # 
  # @param korona_account_id the account id
  # @param image_id id or number of the related object (important: if a number should match the uuid-format, the system will lookup for an id instead of a number)
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_image test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
