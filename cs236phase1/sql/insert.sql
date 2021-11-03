COPY stores(storeid, name, state, latitude, longitude)
FROM '/extra/jfang003/stores.csv'
DELIMITER ','
CSV HEADER;

COPY sales(storeid, itemid, price, time)
FROM '/extra/jfang003/sales.csv'
DELIMITER ','
CSV HEADER;

COPY catalog(itemid, itemname)
FROM '/extra/jfang003/catalog.csv'
DELIMITER ','
CSV HEADER;
