=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

OpenAPI spec version: 3
Contact: support@combase.net
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'

describe KoronaClient::Configuration do
  let(:config) { KoronaClient::Configuration.default }

  before(:each) do
    # uncomment below to setup host and base_path
    #require 'URI'
    #uri = URI.parse("https://www.koronacloud.com/web/api/v3")
    #KoronaClient.configure do |c|
    #  c.host = uri.host
    #  c.base_path = uri.path
    #end
  end

  describe '#base_url' do
    it 'should have the default value' do
      # uncomment below to test default value of the base path
      #expect(config.base_url).to eq("https://www.koronacloud.com/web/api/v3")
    end

    it 'should remove trailing slashes' do
      [nil, '', '/', '//'].each do |base_path|
        config.base_path = base_path
        # uncomment below to test trailing slashes
        #expect(config.base_url).to eq("https://www.koronacloud.com/web/api/v3")
      end
    end
  end
end
