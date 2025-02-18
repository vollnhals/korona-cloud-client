# KoronaCloudClient::PaymentMethodsApi

All URIs are relative to *https://www.koronacloud.com/web/api/v3*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_payment_methods**](PaymentMethodsApi.md#add_payment_methods) | **POST** /accounts/{koronaAccountId}/paymentMethods | adds a batch of new payment methods |
| [**delete_payment_method**](PaymentMethodsApi.md#delete_payment_method) | **DELETE** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} | deletes the single payment method |
| [**delete_payment_methods**](PaymentMethodsApi.md#delete_payment_methods) | **DELETE** /accounts/{koronaAccountId}/paymentMethods | deletes a batch of payment methods |
| [**get_payment_method**](PaymentMethodsApi.md#get_payment_method) | **GET** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} | returns the single payment method |
| [**get_payment_methods**](PaymentMethodsApi.md#get_payment_methods) | **GET** /accounts/{koronaAccountId}/paymentMethods | lists all payment methods |
| [**update_payment_method**](PaymentMethodsApi.md#update_payment_method) | **PATCH** /accounts/{koronaAccountId}/paymentMethods/{paymentMethodId} | updates the single payment method |
| [**update_payment_methods**](PaymentMethodsApi.md#update_payment_methods) | **PATCH** /accounts/{koronaAccountId}/paymentMethods | updates a batch of payment methods |


## add_payment_methods

> <Array<AddOrUpdateResult>> add_payment_methods(korona_account_id, body, opts)

adds a batch of new payment methods

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | array of new payment methods
opts = {
  upsert: true # Boolean | when set to true, updates the object instead of generating a already-exists-error
}

begin
  # adds a batch of new payment methods
  result = api_instance.add_payment_methods(korona_account_id, body, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->add_payment_methods: #{e}"
end
```

#### Using the add_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> add_payment_methods_with_http_info(korona_account_id, body, opts)

```ruby
begin
  # adds a batch of new payment methods
  data, status_code, headers = api_instance.add_payment_methods_with_http_info(korona_account_id, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->add_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | array of new payment methods |  |
| **upsert** | **Boolean** | when set to true, updates the object instead of generating a already-exists-error | [optional] |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_payment_method

> delete_payment_method(korona_account_id, payment_method_id)

deletes the single payment method

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # deletes the single payment method
  api_instance.delete_payment_method(korona_account_id, payment_method_id)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method: #{e}"
end
```

#### Using the delete_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_payment_method_with_http_info(korona_account_id, payment_method_id)

```ruby
begin
  # deletes the single payment method
  data, status_code, headers = api_instance.delete_payment_method_with_http_info(korona_account_id, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_payment_methods

> <Array<AddOrUpdateResult>> delete_payment_methods(korona_account_id, body)

deletes a batch of payment methods

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | array of existing payment methods (id or number required)

begin
  # deletes a batch of payment methods
  result = api_instance.delete_payment_methods(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_methods: #{e}"
end
```

#### Using the delete_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> delete_payment_methods_with_http_info(korona_account_id, body)

```ruby
begin
  # deletes a batch of payment methods
  data, status_code, headers = api_instance.delete_payment_methods_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->delete_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | array of existing payment methods (id or number required) |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_payment_method

> <PaymentMethod> get_payment_method(korona_account_id, payment_method_id)

returns the single payment method

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)

begin
  # returns the single payment method
  result = api_instance.get_payment_method(korona_account_id, payment_method_id)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method: #{e}"
end
```

#### Using the get_payment_method_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentMethod>, Integer, Hash)> get_payment_method_with_http_info(korona_account_id, payment_method_id)

```ruby
begin
  # returns the single payment method
  data, status_code, headers = api_instance.get_payment_method_with_http_info(korona_account_id, payment_method_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentMethod>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |

### Return type

[**PaymentMethod**](PaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_payment_methods

> <ResultListPaymentMethod> get_payment_methods(korona_account_id, opts)

lists all payment methods

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
opts = {
  page: 56, # Integer | number of the page to fetch
  size: 56, # Integer | amount of objects to return per page
  sort: 'sort_example', # String | attribute to sort by (multiple separated by comma; max. 5)
  revision: 789, # Integer | last revision number, objects with a greater revision than this will be returned
  include_deleted: true, # Boolean | indicates deleted objects should be loaded or not (default: false)
  number: 'number_example' # String | number of the related object
}

begin
  # lists all payment methods
  result = api_instance.get_payment_methods(korona_account_id, opts)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_methods: #{e}"
end
```

#### Using the get_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ResultListPaymentMethod>, Integer, Hash)> get_payment_methods_with_http_info(korona_account_id, opts)

```ruby
begin
  # lists all payment methods
  data, status_code, headers = api_instance.get_payment_methods_with_http_info(korona_account_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ResultListPaymentMethod>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->get_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **page** | **Integer** | number of the page to fetch | [optional] |
| **size** | **Integer** | amount of objects to return per page | [optional] |
| **sort** | **String** | attribute to sort by (multiple separated by comma; max. 5) | [optional] |
| **revision** | **Integer** | last revision number, objects with a greater revision than this will be returned | [optional] |
| **include_deleted** | **Boolean** | indicates deleted objects should be loaded or not (default: false) | [optional] |
| **number** | **String** | number of the related object | [optional] |

### Return type

[**ResultListPaymentMethod**](ResultListPaymentMethod.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_payment_method

> update_payment_method(korona_account_id, payment_method_id, body)

updates the single payment method

if [number] is set, the number of the object will change and the resource location as well

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
payment_method_id = 'payment_method_id_example' # String | id of the related object (important: id should match the uuid-format)
body = KoronaCloudClient::PaymentMethod.new # PaymentMethod | the properties to update of the payment method

begin
  # updates the single payment method
  api_instance.update_payment_method(korona_account_id, payment_method_id, body)
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method: #{e}"
end
```

#### Using the update_payment_method_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_payment_method_with_http_info(korona_account_id, payment_method_id, body)

```ruby
begin
  # updates the single payment method
  data, status_code, headers = api_instance.update_payment_method_with_http_info(korona_account_id, payment_method_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_method_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **payment_method_id** | **String** | id of the related object (important: id should match the uuid-format) |  |
| **body** | [**PaymentMethod**](PaymentMethod.md) | the properties to update of the payment method |  |

### Return type

nil (empty response body)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_payment_methods

> <Array<AddOrUpdateResult>> update_payment_methods(korona_account_id, body)

updates a batch of payment methods

[number] must be set in the objects, otherwise the object cannot be updated

### Examples

```ruby
require 'time'
require 'korona-cloud-client'
# setup authorization
KoronaCloudClient.configure do |config|
  # Configure HTTP basic authorization: basicAuth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = KoronaCloudClient::PaymentMethodsApi.new
korona_account_id = 'korona_account_id_example' # String | account id of the KORONA.cloud account
body = [KoronaCloudClient::PaymentMethod.new] # Array<PaymentMethod> | an array of existing payment methods

begin
  # updates a batch of payment methods
  result = api_instance.update_payment_methods(korona_account_id, body)
  p result
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_methods: #{e}"
end
```

#### Using the update_payment_methods_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<AddOrUpdateResult>>, Integer, Hash)> update_payment_methods_with_http_info(korona_account_id, body)

```ruby
begin
  # updates a batch of payment methods
  data, status_code, headers = api_instance.update_payment_methods_with_http_info(korona_account_id, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<AddOrUpdateResult>>
rescue KoronaCloudClient::ApiError => e
  puts "Error when calling PaymentMethodsApi->update_payment_methods_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **korona_account_id** | **String** | account id of the KORONA.cloud account |  |
| **body** | [**Array&lt;PaymentMethod&gt;**](PaymentMethod.md) | an array of existing payment methods |  |

### Return type

[**Array&lt;AddOrUpdateResult&gt;**](AddOrUpdateResult.md)

### Authorization

[basicAuth](../README.md#basicAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

