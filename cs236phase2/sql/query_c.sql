EXPLAIN ANALYZE select state, AVG(price)
FROM STORES, SALES
WHERE stores.storeid = sales.storeid
GROUP BY stores.state; 
