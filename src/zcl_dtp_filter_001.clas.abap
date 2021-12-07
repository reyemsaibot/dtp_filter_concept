CLASS zcl_dtp_filter_001 DEFINITION
  PUBLIC
  FINAL
  INHERITING FROM zcl_dtp_filter
  CREATE PUBLIC .

  PUBLIC SECTION.
   METHODS zif_dtp_filter~filter_data
   REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.


ENDCLASS.



CLASS zcl_dtp_filter_001 IMPLEMENTATION.

method zif_dtp_filter~filter_data.

select /bic/zcountry
  from /bic/pzcountry
  into table @data(countries)
 where objvers = @rs_c_objvers-active.

result = value #( FOR <country> in countries ( sign = 'I'
                                               option = 'EQ'
                                               low = <country>-/bic/zcountry
                                               high = ''
                                               fieldname = i_fieldname
                                               iobjnm = i_infoobject ) ).

ENDMETHOD.


ENDCLASS.
