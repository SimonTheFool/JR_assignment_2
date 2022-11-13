SELECT PRODUCT_ID,
COUNT(PRODUCT_ID) As ct,
COUNT(PRODUCT_SEQ_TIME)-COUNT(DISTINCT USER_ID) AS SUM_REO,
SUM(

    CASE WHEN PRODUCT_SEQ_TIME=1 THEN 1 ELSE 0 END

    ) AS SUM_FIRST,
SUM(
    CASE WHEN PRODUCT_SEQ_TIME=2 THEN 1 ELSE 0 END
    ) AS SUM_SECOND
FROM {{ref('prd_prep')}}
GROUP BY PRODUCT_ID


/*
5. Create a SQL query (prd_features). Based on table order_products_prior, first write a sql query
to calculate the sequence of product purchase for each user, and name it product_seq_time
(For example, if a user first time purchase a product A, mark it as 1. If it’s the second time a user
purchases a product A, mark it as 2).

Then on top of this query, for each product, calculate the count, sum of reordered, count of
product_seq_time = 1 and count of product_seq_time = 2.

The first query is in prd_prep.sql
*/