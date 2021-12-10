EXPLAIN ANALYZE select *
FROM STORES JOIN (SALES JOIN CATALOG ON sales.itemid = catalog.itemid) ON stores.storeid = sales.storeid;

