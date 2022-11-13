SELECT * FROM {{source('instacart','orders')}}
WHERE EVAL_SET = 'prior'