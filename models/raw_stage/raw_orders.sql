SELECT
    *
FROM {{ source('tpch_sample', 'ORDERS') }} AS a