SELECT a.*,
b.product_id,
b.add_to_cart_order,
b.reordered
FROM {{ref('stg_orders')}} a
JOIN {{ref('stg_order_products_prior')}} b
ON a.order_id = b.order_id
