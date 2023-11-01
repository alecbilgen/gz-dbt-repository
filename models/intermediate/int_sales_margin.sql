SELECT 
(quantity * purchase_price) AS purchase_cost
, (revenue - purchase_cost)) AS margin
FROM {{ref("stg_raw__sales")}} s
LEFT JOIN {{ref("stg_raw__product")}} p
    USING (products_id)
