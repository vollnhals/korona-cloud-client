# KoronaCloudClient::ModelReference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx). recommanded to use for linking purposes. will never change. | [optional] |
| **name** | **String** | name, like it is set in backoffice | [optional] |
| **number** | **String** | number, like it is set in backoffice | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::ModelReference.new(
  id: null,
  name: null,
  number: null
)
```

