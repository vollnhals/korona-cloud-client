# KoronaCloudClient::Customer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **address** | [**AddressInformation**](AddressInformation.md) |  | [optional] |
| **birthday** | **Time** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional] |
| **cards** | [**Array&lt;CustomerCard&gt;**](CustomerCard.md) |  | [optional] |
| **company** | **String** |  | [optional] |
| **customer_group** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **economic_zone** | [**ModelReference**](ModelReference.md) |  | [optional] |
| **email** | **String** |  | [optional] |
| **external_id** | **String** |  | [optional] |
| **firstname** | **String** |  | [optional] |
| **gender** | **String** |  | [optional] |
| **informations** | [**Array&lt;CustomerInformation&gt;**](CustomerInformation.md) |  | [optional] |
| **lastname** | **String** |  | [optional] |
| **phone** | **String** |  | [optional] |
| **tax_id** | **String** |  | [optional] |
| **privacy_policy_accepted** | **Boolean** |  | [optional] |
| **marketing_contact_permitted** | **Boolean** |  | [optional] |
| **create_time** | **Date** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional][readonly] |
| **last_receipt_time** | **Date** | Format: yyyy-MM-dd&#39;T&#39;HH:mm:ssXXX | [optional][readonly] |
| **use_email_for_digital_receipt** | **Boolean** |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Customer.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  address: null,
  birthday: 2018-11-22T09:40:21+01:00,
  cards: null,
  company: null,
  customer_group: null,
  economic_zone: null,
  email: null,
  external_id: null,
  firstname: null,
  gender: null,
  informations: null,
  lastname: null,
  phone: null,
  tax_id: null,
  privacy_policy_accepted: null,
  marketing_contact_permitted: null,
  create_time: null,
  last_receipt_time: null,
  use_email_for_digital_receipt: null,
  number_length: null
)
```

