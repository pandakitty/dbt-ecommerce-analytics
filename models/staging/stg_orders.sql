WITH raw_orders AS (
    SELECT * FROM {{ source('ecommerce', 'raw_orders') }}
)

SELECT 
    order_id,
    customer_id,
    order_status,
    order_purchase_timestamp
FROM raw_orders
WHERE order_id IS NOT NULL
