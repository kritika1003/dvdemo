SELECT
    *
FROM {{ source('tpch_sample', 'SHIPPERS') }} AS a