@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Flight'
define root view entity ZR_FR_Flight
  as select from zfe_fr_flight
  composition [0..*] of ZR_FR_Booking as _Bookings
  association [1..1] to zfe_fr_plane  as _Plane on $projection.PlaneId = _Plane.plane_id
{
  key flight_uuid     as FlightUuid,
      connection_uuid as ConnectionUuid,
      plane_id        as PlaneId,
      carrier_id      as CarrierId,
      depature_date   as DepatureDate,
      depature_time   as DepatureTime,
      arrival_time    as ArrivalTime,

      /* Assosiations */
      _Bookings,
      _Plane
}
