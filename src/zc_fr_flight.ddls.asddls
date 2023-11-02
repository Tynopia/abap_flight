@EndUserText.label: 'Flight'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZC_FR_Flight
  provider contract transactional_query
  as projection on ZR_FR_Flight
{
  key FlightUuid,
      ConnectionUuid,
      PlaneId,
      CarrierId,
      DepatureDate,
      DepatureTime,
      ArrivalTime,
      /* Associations */
      _Bookings: redirected to composition child ZC_FR_Booking
}
