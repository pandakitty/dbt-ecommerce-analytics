WITH orders AS (
    SELECT 
        order_id,
        customer_id,
        order_status,
        CAST(order_purchase_timestamp AS TIMESTAMP) AS purchase_at
    FROM {{ ref('stg_orders') }}
),

payments AS (
    SELECT 
        order_id,
        SUM(payment_value) AS total_order_value
    FROM {{ ref('stg_payments') }}
    GROUP BY 1
)

SELECT 
    o.order_id,
    o.customer_id,
    o.order_status,
    o.purchase_at,
    COALESCE(p.total_order_value, 0) AS total_order_value
FROM orders o
LEFT JOIN payments p ON o.order_id = p.order_id
