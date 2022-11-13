SELECT USER_ID, 
MAX(ORDER_NUMBER) AS TOTAL_ORDER, 
SUM(DAYS_SINCE_PRIOR_ORDER) AS SUM_PERIOD, 
AVG(DAYS_SINCE_PRIOR_ORDER) AS AVG_INTERVAL
FROM {{ref('stg_orders')}}
GROUP BY USER_ID

/*
Create a SQL query (user_features_1). Based on table orders, for each user, calculate the max
order_number, the sum of days_since_prior_order and the average of days_since_prior_order.
*/