SELECT *
    , CAST((quantity * CAST(purchase_price AS FLOAT64)) AS FLOAT64)AS purchase_cost
    , CAST((revenue - (quantity * CAST(purchase_price AS FLOAT64)) AS FLOAT64,2) AS margin
FROM {{ref("stg_raw__sales")}} s
JOIN {{ref("stg_raw__product")}} p
USING (products_id)
