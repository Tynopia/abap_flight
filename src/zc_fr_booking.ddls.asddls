@EndUserText.label: 'Booking'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define view entity ZC_FR_Booking
  as projection on ZR_FR_Booking
{
  key BookingUuid,
      FlightUuid,
      CustomerId,
      Price,
      CurrencyCode,
      /* Associations */
      _Flight : redirected to parent ZC_FR_Flight,
      _Customer
}
