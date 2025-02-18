=begin
#KORONA.cloud API v3

#Our api provides access to our cloud services

The version of the OpenAPI document: 2.17.26
Contact: support@combase.net
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.2.1

=end

require 'cgi'

module KoronaCloudClient
  class DeliveryNotesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # adds delivery notes
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<DeliveryNote>] data to add
    # @param [Hash] opts the optional parameters
    # @return [Array<AddOrUpdateResult>]
    def add_delivery_notes(korona_account_id, body, opts = {})
      data, _status_code, _headers = add_delivery_notes_with_http_info(korona_account_id, body, opts)
      data
    end

    # adds delivery notes
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param body [Array<DeliveryNote>] data to add
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AddOrUpdateResult>, Integer, Hash)>] Array<AddOrUpdateResult> data, response status code and response headers
    def add_delivery_notes_with_http_info(korona_account_id, body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryNotesApi.add_delivery_notes ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling DeliveryNotesApi.add_delivery_notes"
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling DeliveryNotesApi.add_delivery_notes"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/deliveryNotes'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AddOrUpdateResult>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"DeliveryNotesApi.add_delivery_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryNotesApi#add_delivery_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # book the single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def book_delivery_note(korona_account_id, delivery_note_id, opts = {})
      book_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts)
      nil
    end

    # book the single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def book_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryNotesApi.book_delivery_note ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling DeliveryNotesApi.book_delivery_note"
      end
      # verify the required parameter 'delivery_note_id' is set
      if @api_client.config.client_side_validation && delivery_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_note_id' when calling DeliveryNotesApi.book_delivery_note"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId}/book'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'deliveryNoteId' + '}', CGI.escape(delivery_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"DeliveryNotesApi.book_delivery_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryNotesApi#book_delivery_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # finalize the single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def finalize_delivery_note(korona_account_id, delivery_note_id, opts = {})
      finalize_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts)
      nil
    end

    # finalize the single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def finalize_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryNotesApi.finalize_delivery_note ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling DeliveryNotesApi.finalize_delivery_note"
      end
      # verify the required parameter 'delivery_note_id' is set
      if @api_client.config.client_side_validation && delivery_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_note_id' when calling DeliveryNotesApi.finalize_delivery_note"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId}/finalize'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'deliveryNoteId' + '}', CGI.escape(delivery_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"DeliveryNotesApi.finalize_delivery_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryNotesApi#finalize_delivery_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # returns a single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [DeliveryNote]
    def get_delivery_note(korona_account_id, delivery_note_id, opts = {})
      data, _status_code, _headers = get_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts)
      data
    end

    # returns a single delivery note
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param delivery_note_id [String] id of the related object (important: id should match the uuid-format)
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeliveryNote, Integer, Hash)>] DeliveryNote data, response status code and response headers
    def get_delivery_note_with_http_info(korona_account_id, delivery_note_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryNotesApi.get_delivery_note ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling DeliveryNotesApi.get_delivery_note"
      end
      # verify the required parameter 'delivery_note_id' is set
      if @api_client.config.client_side_validation && delivery_note_id.nil?
        fail ArgumentError, "Missing the required parameter 'delivery_note_id' when calling DeliveryNotesApi.get_delivery_note"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/deliveryNotes/{deliveryNoteId}'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s)).sub('{' + 'deliveryNoteId' + '}', CGI.escape(delivery_note_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeliveryNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"DeliveryNotesApi.get_delivery_note",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryNotesApi#get_delivery_note\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # lists all delivery notes
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [Time] :min_delivery_time min (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_delivery_time max (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :point_of_sale point of sale
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [String] :customer customer id to filter by
    # @option opts [String] :number number of the related object
    # @return [ResultListDeliveryNote]
    def get_delivery_notes(korona_account_id, opts = {})
      data, _status_code, _headers = get_delivery_notes_with_http_info(korona_account_id, opts)
      data
    end

    # lists all delivery notes
    # @param korona_account_id [String] account id of the KORONA.cloud account
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page number of the page to fetch
    # @option opts [Integer] :size amount of objects to return per page
    # @option opts [String] :sort attribute to sort by (multiple separated by comma; max. 5)
    # @option opts [Integer] :revision last revision number, objects with a greater revision than this will be returned
    # @option opts [Boolean] :include_deleted indicates deleted objects should be loaded or not (default: false)
    # @option opts [Time] :min_delivery_time min (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_delivery_time max (inclusive) delivery time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :min_booking_time min (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [Time] :max_booking_time max (inclusive) booking time of the receipt (ISO 8601; Format: YYYY-MM-DDTHH:MM:SS; timezone optional)
    # @option opts [String] :point_of_sale point of sale
    # @option opts [String] :organizational_unit organizational unit
    # @option opts [String] :customer customer id to filter by
    # @option opts [String] :number number of the related object
    # @return [Array<(ResultListDeliveryNote, Integer, Hash)>] ResultListDeliveryNote data, response status code and response headers
    def get_delivery_notes_with_http_info(korona_account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: DeliveryNotesApi.get_delivery_notes ...'
      end
      # verify the required parameter 'korona_account_id' is set
      if @api_client.config.client_side_validation && korona_account_id.nil?
        fail ArgumentError, "Missing the required parameter 'korona_account_id' when calling DeliveryNotesApi.get_delivery_notes"
      end
      # resource path
      local_var_path = '/accounts/{koronaAccountId}/deliveryNotes'.sub('{' + 'koronaAccountId' + '}', CGI.escape(korona_account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = opts[:'sort'] if !opts[:'sort'].nil?
      query_params[:'revision'] = opts[:'revision'] if !opts[:'revision'].nil?
      query_params[:'includeDeleted'] = opts[:'include_deleted'] if !opts[:'include_deleted'].nil?
      query_params[:'minDeliveryTime'] = opts[:'min_delivery_time'] if !opts[:'min_delivery_time'].nil?
      query_params[:'maxDeliveryTime'] = opts[:'max_delivery_time'] if !opts[:'max_delivery_time'].nil?
      query_params[:'minBookingTime'] = opts[:'min_booking_time'] if !opts[:'min_booking_time'].nil?
      query_params[:'maxBookingTime'] = opts[:'max_booking_time'] if !opts[:'max_booking_time'].nil?
      query_params[:'pointOfSale'] = opts[:'point_of_sale'] if !opts[:'point_of_sale'].nil?
      query_params[:'organizationalUnit'] = opts[:'organizational_unit'] if !opts[:'organizational_unit'].nil?
      query_params[:'customer'] = opts[:'customer'] if !opts[:'customer'].nil?
      query_params[:'number'] = opts[:'number'] if !opts[:'number'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ResultListDeliveryNote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basicAuth']

      new_options = opts.merge(
        :operation => :"DeliveryNotesApi.get_delivery_notes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: DeliveryNotesApi#get_delivery_notes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
