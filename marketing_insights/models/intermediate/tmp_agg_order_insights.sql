{{ config(materialized='ephemeral')}}

SELECT 
    r.R_NAME AS Region_Name,
    n.N_NAME AS Nation_Name,
    -- o._LOADED_AT as ds,
    COUNT(1) as Order_Count,
    ROUND(SUM(O_TOTALPRICE) * 94.5,0) AS TOTAL_PRICE_USD
FROM {{ ref('stg_orders') }} o
LEFT JOIN  {{ ref('stg_customer')}} c
ON o.O_CUSTKEY = c.C_CUSTKEY
LEFT JOIN {{ ref('stg_nation') }} n
ON c.C_NATIONKEY = n.N_NATIONKEY
LEFT JOIN {{ ref('stg_region') }} r
ON n.N_REGIONKEY = r.R_REGIONKEY
GROUP BY 1,2