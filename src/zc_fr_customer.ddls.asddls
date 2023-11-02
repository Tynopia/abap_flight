@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
  serviceQuality: #X,
  sizeCategory: #S,
  dataClass: #MIXED
}
define view entity ZC_FR_Customer
  as select from ZR_FR_Customer
{
  key CustomerUuid,
      Firstname,
      Lastname,
      Name,
      /* Associations */
      _Bookings
}
