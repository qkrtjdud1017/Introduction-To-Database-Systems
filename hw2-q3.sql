SELECT W.day_of_week, AVG(F.arrival_delay) AS delay
FROM Flights AS F
JOIN Weekdays AS W ON W.did = F.day_of_week_id
GROUP BY W.did
ORDER BY AVG(F.arrival_delay) DESC
LIMIT 1;

-- Friday,14.4725010477787