SELECT S.storeid
FROM STORES S
WHERE NOT EXISTS (SELECT C.itemid FROM CATALOG C WHERE NOT EXISTS (SELECT S2.itemid, S2.storeid FROM SALES S2 WHERE S2.itemid = C.itemid AND S.storeid = S2.storeid))
GROUP BY S.storeid;
