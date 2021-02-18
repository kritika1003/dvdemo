{%- set yaml_metadata -%}
source_model: 'raw_products'
derived_columns:
   CATEGORY: 'CATEGORYID'
   RECORD_SOURCE: '!TPCH-PRODUCTS'
hashed_columns:
   PRODUCT_PK: 'PRODUCTID'
   SUPPLIER_PK: 'SUPPLIERID'
   PRODUCT_SUPPLIER_PK:
       - 'PRODUCTID'
       - 'SUPPLIERID'
   PRODUCT_HASHDIFF:
     is_hashdiff: true
     columns:
       - 'PRODUCTID'
       - 'SUPPLIERID'
       - 'PRODUCTNAME'
       - 'CATEGORYID'
       - 'QUANTITYPERUNIT'
       - 'UNITPRICE'
       - 'UNITSINSTOCK'
       - 'UNITSONORDER'
       - 'REORDERLEVEL'
{%- endset -%}

{% set metadata_dict = fromyaml(yaml_metadata) %}
{%- do log("metadata dict: " ~ metadata_dict, true) %}
{% set source_model = metadata_dict['source_model'] %}
{%- do log("source_model: " ~ source_model, true) %}
{% set derived_columns = metadata_dict['derived_columns'] %}
{%- do log("derived_columns: " ~ derived_columns, true) %}
{% set hashed_columns = metadata_dict['hashed_columns'] %}
{%- do log("hashed_columns: " ~ hashed_columns, true) %}

WITH staging AS (



    {{ dbtvault.stage(include_source_columns=true,



                      source_model=source_model,



                      derived_columns=derived_columns,



                      hashed_columns=hashed_columns,



                      ranked_columns=none) }}



)



SELECT *,



       TO_TIMESTAMP('{{ var('LOAD_DATE') }}') AS LOAD_DATE



FROM staging