EXPLAIN ANALYZE SELECT DISTINCT st.storeid
FROM STORES st, SALES s, CATALOG c
WHERE st.storeid = s.storeid and s.itemid=c.itemid and c.itemname='ball' and
        st.storeid in (SELECT st2.storeid
                        FROM STORES st2, SALES s2, CATALOG c2
                        WHERE st2.storeid = s2.storeid and
                                s2.itemid = c2.itemid and
                                c2.itemname='cap');

