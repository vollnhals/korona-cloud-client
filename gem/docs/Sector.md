# KoronaCloudClient::Sector

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **name** | **String** |  | [optional] |
| **sales_taxes** | [**Array&lt;SectorSalesTaxItem&gt;**](SectorSalesTaxItem.md) |  | [optional] |
| **revenue_accounts** | [**Array&lt;SectorRevenueAccountItem&gt;**](SectorRevenueAccountItem.md) |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Sector.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  name: null,
  sales_taxes: null,
  revenue_accounts: null,
  number_length: null
)
```

