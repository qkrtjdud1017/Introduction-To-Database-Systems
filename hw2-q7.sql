SELECT SUM(F.capacity) as capacity
FROM Flights AS F
JOIN Months AS M ON M.mid = F.month_id
WHERE (F.origin_city = 'Seattle WA' AND F.dest_city = 'San Francisco CA')
	OR (F.origin_city = 'San Francisco CA' AND F.dest_city = 'Seattle WA')
	AND M.month = 'July'
	AND F.day_of_month = 10;
	
-- 10832
