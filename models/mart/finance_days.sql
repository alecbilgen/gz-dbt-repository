
SELECT
    date_date
    ,ROUND(COUNT(orders_id),0) AS nb_transactions
    ,ROUND(SUM(revenue),2) AS revenue
    ,ROUND(AVG(revenue),2) AS average_basket
    ,ROUND(SUM(margin),2) AS margin
    ,ROUND(SUM(operational_margin),2) AS operational_margin
    ,ROUND(SUM(purchase_cost),2) AS purchase_cost
    ,ROUND(SUM(shipping_fee),2) AS shipping_fee
    ,ROUND(SUM(logcost),2) AS logcost
    ,ROUND(SUM(ship_cost),2) AS ship_cost
    ,ROUND(SUM(quantity),0) AS quantity

    FROM {{ref("int_orders_operational")}}
    GROUP by date_date
    ORDER BY date_date DESC
