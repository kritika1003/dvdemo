SELECT
    *
FROM {{ source('tpch_sample', 'SUPPLIERS') }} AS a