-- Seoyoung Park
-- CSE 414
-- Homework 3

SELECT C.name AS carrier
FROM Carriers C
WHERE C.cid IN (SELECT F.carrier_id
                FROM Flights F
                WHERE F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA')
ORDER BY C.name;

/*
Alaska Airlines Inc.
SkyWest Airlines Inc.
United Air Lines Inc.
Virgin America
 */