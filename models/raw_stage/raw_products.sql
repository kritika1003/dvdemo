SELECT
    *
FROM {{ source('tpch_sample', 'PRODUCTS') }} AS a