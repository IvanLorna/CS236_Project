WITH state_centers as (
    SELECT S.state, AVG(latitude) as latitude, AVG(longitude) AS longitude
    from STORES S
    GROUP BY state
    ORDER BY state DESC
    )
INSERT INTO STATE_INFO
SELECT * FROM state_centers
