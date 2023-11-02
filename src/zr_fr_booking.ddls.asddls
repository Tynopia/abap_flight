@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking'
define view entity ZR_FR_Booking
  as select from zfe_fr_book
  association to parent ZR_FR_Flight as _Flight on $projection.FlightUuid = _Flight.FlightUuid
  association to exact one ZR_FR_Customer as _Customer on $projection.CustomerId = _Customer.CustomerUuid
{
  key booking_uuid  as BookingUuid,
      flight_uuid   as FlightUuid,
      customer_id   as CustomerId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      price         as Price,
      currency_code as CurrencyCode,

      /* Assosiations */
      _Flight,
      _Customer
}
