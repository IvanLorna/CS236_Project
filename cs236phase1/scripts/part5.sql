--query 3
with SC as(
	SELECT SIC.storeid 
	FROM	
		(SELECT storeid, COUNT(DISTINCT itemid) 
		FROM SALES 
		GROUP BY storeid) SIC,
	
		(SELECT COUNT(DISTINCT itemid)
		FROM CATALOG) TIC
	WHERE SIC.count = TIC.count)
SELECT S.state, COUNT(SC.storeid)
FROM STORES S, SC
WHERE S.storeid = SC.storeid
GROUP BY S.state
HAVING COUNT(SC.storeid) > 5;

