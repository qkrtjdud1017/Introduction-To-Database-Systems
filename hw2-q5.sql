SELECT C.name, AVG(F.canceled)*100 AS percent
FROM Flights AS F
JOIN Carriers AS C ON C.cid = F.carrier_id
WHERE F.origin_city = 'Seattle WA'
GROUP BY C.cid
HAVING AVG(F.canceled) > 0.005
ORDER BY AVG(F.canceled) ASC;

-- "SkyWest Airlines Inc.",0.728291316526611
-- "Frontier Airlines Inc.",0.840336134453781
-- "United Air Lines Inc.",0.983767830791933
-- "JetBlue Airways",1.00250626566416
-- "Northwest Airlines Inc.",1.4336917562724
-- "ExpressJet Airlines Inc.",3.2258064516129