SELECT
USER_ID, PRODUCT_ID,
COUNT(ORDER_NUMBER) AS TOTAL_P_U,
MIN(ORDER_NUMBER) AS START_P_U,
MAX(ORDER_NUMBER) AS END_P_U,
AVG(add_to_cart_order) AS AVG_C_O
FROM {{ref('create_opp')}}
GROUP BY 1,2


/*
4. Create a SQL query (up_features). Based on table order_products_prior, for each user and
product, calculate the total number of orders, minimum order_number, maximum
order_number and average add_to_cart_order.

TOTAL_P_U, total number of orders
START_P_U, minimum order_number
END_P_U, maximum order_number
AVG_C_O, average of add_to_cart_order
*/