-- Seoyoung Park
-- CSE 414
-- Homework 3

SELECT DISTINCT C.name AS carrier
FROM Carriers C JOIN Flights AS F ON C.cid = F.carrier_id
WHERE F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA'
ORDER BY C.name;

/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
 */