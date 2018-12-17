SELECT C.name AS carrier, MAX(F.price) AS max_price
FROM Flights AS F
JOIN Carriers AS C ON C.cid = F.carrier_id
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'New York NY')
	OR (F.origin_city = 'New York NY' AND F.dest_city = 'Seattle WA')
GROUP BY C.cid;

-- "American Airlines Inc.",991
-- "JetBlue Airways",996
-- "Delta Air Lines Inc.",999