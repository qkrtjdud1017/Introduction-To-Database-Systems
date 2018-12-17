-- Seoyoung Park
-- CSE 414
-- Homework 3

SELECT F.dest_city AS city
FROM Flights F
WHERE F.origin_city != 'Seattle WA' AND F.dest_city != 'Seattle WA'
AND F.dest_city NOT IN (SELECT F2.dest_city
                        FROM Flights F1, Flights F2
                        WHERE F1.dest_city = F2.origiN_city
                        AND F.dest_city = F2.dest_city
                        GROUP BY F1.origin_city, F2.dest_city
                        HAVING F1.origin_city = 'Seattle WA')
GROUP BY F.dest_city
ORDER BY F.dest_city;

/*
Devils Lake ND
Hattiesburg/Laurel MS
St. Augustine FL
 */