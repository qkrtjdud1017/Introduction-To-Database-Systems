SELECT DISTINCT F.flight_num
FROM Flights AS F
	JOIN Carriers AS C ON F.carrier_id = C.cid
	JOIN Weekdays AS W ON F.day_of_week_id = W.did
WHERE F.origin_city = 'Seattle WA'
	AND F.dest_city = 'Boston MA'
	AND C.name = 'Alaska Airlines Inc.'
	AND W.day_of_week = 'Monday';
	
-- 12
-- 24
-- 734
