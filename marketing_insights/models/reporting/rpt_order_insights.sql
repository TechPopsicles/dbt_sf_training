SELECT
    Region_Name,
    Nation_Name,
    ds,
    Order_Count,
    TOTAL_PRICE_USD
FROM {{ ref('agg_order_insights') }}