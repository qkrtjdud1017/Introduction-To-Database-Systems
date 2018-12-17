SELECT C.name, SUM(F.departure_delay) AS delay
FROM Carriers AS C
JOIN Flights AS F ON C.cid = F.carrier_id
GROUP BY C.cid;

-- "American Airlines Inc.",1849386
-- "Alaska Airlines Inc.",285111
-- "JetBlue Airways",435562
-- "Continental Air Lines Inc.",414226
-- "Independence Air",201418
-- "Delta Air Lines Inc.",1601314
-- "ExpressJet Airlines Inc.",934691
-- "Frontier Airlines Inc.",165126
-- "AirTran Airways Corporation",473993
-- "Hawaiian Airlines Inc.",386
-- "America West Airlines Inc. (Merged with US Airways 9/05. Stopped reporting 10/07.)",173255
-- "Envoy Air",771679
-- "Spirit Air Lines",167894
-- "Northwest Airlines Inc.",531356
-- "Comair Inc.",282042
-- "SkyWest Airlines Inc.",682158
-- "ATA Airlines d/b/a ATA",38676
-- "United Air Lines Inc.",1483777
-- "US Airways Inc.",577268
-- "Virgin America",52597
-- "Southwest Airlines Co.",3056656
-- "ExpressJet Airlines Inc. (1)",483171