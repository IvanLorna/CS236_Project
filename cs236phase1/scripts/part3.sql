--query 3
SELECT SIC.storeid 
FROM	
	(SELECT storeid, COUNT(DISTINCT itemid) 
	FROM SALES 
	GROUP BY storeid) SIC,
	
	(SELECT COUNT(DISTINCT itemid)
	FROM CATALOG) TIC
WHERE SIC.count = TIC.count;

