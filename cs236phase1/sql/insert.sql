COPY stores(storeid, name, state, latitude, longitude)
FROM '/extra/$USER/stores.csv'
DELIMITER ','
CSV HEADER;

COPY sales(storeid, itemid, price, time)
FROM '/extra/$USER/sales.csv'
DELIMITER ','
CSV HEADER;

COPY catalog(itemid, itemname)
FROM '/extra/$USER/catalog.csv'
DELIMITER ','
CSV HEADER;
