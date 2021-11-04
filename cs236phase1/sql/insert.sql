COPY stores(storeid, name, state, latitude, longitude)
FROM '../data/stores.csv'
DELIMITER ','
CSV HEADER;

COPY sales(storeid, itemid, price, time)
FROM '../data/sales.csv'
DELIMITER ','
CSV HEADER;

COPY catalog(itemid, itemname)
FROM '../data/catalog.csv'
DELIMITER ','
CSV HEADER;
