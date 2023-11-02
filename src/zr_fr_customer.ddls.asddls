@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Customer'
define root view entity ZR_FR_Customer
  as select from zfe_fr_customer
  association to many ZR_FR_Booking as _Bookings on $projection.CustomerUuid = _Bookings.CustomerId
{
  key customer_uuid                               as CustomerUuid,
      firstname                                   as Firstname,
      lastname                                    as Lastname,

      /* Transient Data */
      concat_with_space( firstname, lastname, 1 ) as Name,
      
      /* Assosiations */
      _Bookings
}
