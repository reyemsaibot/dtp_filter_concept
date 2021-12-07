interface ZIF_DTP_FILTER
  public.

  types: ty_t_rssdlrange type STANDARD TABLE OF rssdlrange with empty key.

  methods filter_data
  importing
  i_infoobject type rsiobjnm
  i_fieldname type RSFIELDNM

    RETURNING
      VALUE(result) type ty_t_rssdlrange.

endinterface.
