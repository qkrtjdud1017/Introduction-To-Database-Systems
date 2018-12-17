-- Seoyoung Park
-- CSE 414
-- HOMEWORK 1, Problem 6

select * from MyRestaurants 
WHERE LikeOrNot = 1 AND
      date(LastVisit) < date('now', '-3 month');
-- Isarn            Thai        9           2018-01-30  1         
-- WildWasabi       Japanese    6           2018-04-21  1     