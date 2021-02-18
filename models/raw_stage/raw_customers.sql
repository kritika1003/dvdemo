SELECT
    *
FROM {{ source('tpch_sample', 'CUSTOMERS') }} AS a