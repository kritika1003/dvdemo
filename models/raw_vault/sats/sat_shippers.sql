{%- set source_model = "v_stg_shippers" -%}
{%- set src_pk = "SHIPPER_PK" -%}
{%- set src_hashdiff = "SHIPPER_HASHDIFF" -%}
{%- set src_payload = ["COMPANYNAME", "PHONE"] -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}