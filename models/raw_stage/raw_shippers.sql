SELECT
    *
FROM {{ source('tpch_sample', 'SHIPPERS') }} 
--FROM {{ source('tpch_sample', 'SHIPPERS') }} where UPDATE_TS > '2021-02-10 00:00:00.000'
