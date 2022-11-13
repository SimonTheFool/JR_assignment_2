SELECT USER_ID,
COUNT(PRODUCT_ID) AS TOTAL_ITEMS,
COUNT(DISTINCT PRODUCT_ID) AS TOTAL_D_ITEMS,
SUM(REORDERED)/MAX(ORDER_NUMBER) AS REORDER_RATE

FROM {{ref('create_opp')}}
GROUP BY 1

/*
Create a SQL query (user_features_2). Similar to above, based on table order_products_prior,
for each user calculate the total number of products, total number of distinct products, and user
reorder ratio(number of reordered = 1 divided by number of order_number > 1)
*/