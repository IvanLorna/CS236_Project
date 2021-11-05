with store_state as 
	(
	SELECT S.storeid,SI.state, min(DIST)
	FROM STATE_INFO SI, STORES S, 
		(
		SELECT S.storeid, min(calculate_distance(SI.latitude, SI.longitude,S.latitude,S.longitude))
		FROM STATE_INFO SI, STORES S
		WHERE S.state = 'N/A'
		GROUP BY S.storeid
		) DIST
	WHERE S.state = 'N/A' AND DIST.min = calculate_distance(SI.latitude,SI.longitude,S.latitude,S.longitude)
	GROUP BY S.storeid, SI.state,DIST.min
	)

UPDATE STORES S
SET state = store_state.state
FROM store_state
WHERE store_state.storeid = S.storeid;
