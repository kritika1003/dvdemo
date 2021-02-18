{%- set source_model = "v_stg_products" -%}
{%- set src_pk = "PRODUCT_PK" -%}
{%- set src_hashdiff = "PRODUCT_HASHDIFF" -%}
{%- set src_payload = ["PRODUCTNAME", "QUANTITYPERUNIT", "UNITPRICE", "CATEGORYID", "UNITSINSTOCK", "UNITSONORDER", "REORDERLEVEL"] -%}
{%- set src_ldts = "LOAD_DATE" -%}
{%- set src_source = "RECORD_SOURCE" -%}

{{ dbtvault.sat(src_pk=src_pk, src_hashdiff=src_hashdiff,
                src_payload=src_payload, src_ldts=src_ldts, src_source=src_source,
                source_model=source_model) }}