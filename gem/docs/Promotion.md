# KoronaCloudClient::Promotion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | indicates whether the object is active for use or not | [optional][readonly] |
| **id** | **String** | global object uuid (xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx) | [optional] |
| **number** | **String** | number of the object, like it is set in backoffice; will be removed when active&#x3D;false | [optional] |
| **revision** | **Integer** | the revision number of the object. revision numbers are unique per object-type. there is is no object of the same type with identical revision numbers. | [optional][readonly] |
| **benefit** | [**PromotionBenefit**](PromotionBenefit.md) |  | [optional] |
| **bonuspoint** | [**PromotionBonuspoint**](PromotionBonuspoint.md) |  | [optional] |
| **coupon** | [**PromotionCoupon**](PromotionCoupon.md) |  | [optional] |
| **deactivated** | **Boolean** |  | [optional] |
| **name** | **String** |  | [optional] |
| **receipt_info_texts** | [**Array&lt;ModelReference&gt;**](ModelReference.md) |  | [optional] |
| **stamp** | [**PromotionStamp**](PromotionStamp.md) |  | [optional] |
| **triggers** | [**Array&lt;PromotionTrigger&gt;**](PromotionTrigger.md) |  | [optional] |
| **type** | **String** |  | [optional] |
| **validity** | [**PromotionValidity**](PromotionValidity.md) |  | [optional] |
| **number_length** | **Integer** |  | [optional] |

## Example

```ruby
require 'korona-cloud-client'

instance = KoronaCloudClient::Promotion.new(
  active: null,
  id: null,
  number: null,
  revision: null,
  benefit: null,
  bonuspoint: null,
  coupon: null,
  deactivated: null,
  name: null,
  receipt_info_texts: null,
  stamp: null,
  triggers: null,
  type: null,
  validity: null,
  number_length: null
)
```

