SELECT DISTINCT C.name
FROM Flights AS F
JOIN Carriers AS C ON C.cid = F.carrier_id
JOIN Months AS M ON M.mid = F.month_id
GROUP BY C.name, M.month, F.day_of_month
HAVING COUNT(*) > 1000;

-- "American Airlines Inc."
-- "Comair Inc."
-- "Delta Air Lines Inc."
-- "Envoy Air"
-- "ExpressJet Airlines Inc."
-- "ExpressJet Airlines Inc. (1)"
-- "JetBlue Airways"
-- "Northwest Airlines Inc."
-- "SkyWest Airlines Inc."
-- "Southwest Airlines Co."
-- "US Airways Inc."
-- "United Air Lines Inc."
