-- Seoyoung Park
-- CSE 414
-- HOMEWORK 1, Problem 4

.separator ", "
select * from MyRestaurants;
-- Isarn, Thai, 9, 2018-01-30, 1
-- WildWasabi, Japanese, 6, 2018-04-21, 1
-- Chipotle, Mexican, 7, 2016-08-04, NULL
-- AppleBees, American, 6, 2017-11-14, 0
-- Hosoonyi, Korean, 10, 2017-10-10, 0
-- PhoBrothers, Vietnamese, 25, 2018-07-23, 1

.header on 
select * from MyRestaurants;
-- Name, TypeOfFood, Distance, LastVisit, LikeOrNot
-- Isarn, Thai, 9, 2018-01-30, 1
-- WildWasabi, Japanese, 6, 2018-04-21, 1
-- Chipotle, Mexican, 7, 2016-08-04, NULL
-- AppleBees, American, 6, 2017-11-14, 0
-- Hosoonyi, Korean, 10, 2017-10-10, 0
-- PhoBrothers, Vietnamese, 25, 2018-07-23, 1

.header off
select * from MyRestaurants;
-- Isarn, Thai, 9, 2018-01-30, 1
-- WildWasabi, Japanese, 6, 2018-04-21, 1
-- Chipotle, Mexican, 7, 2016-08-04, NULL
-- AppleBees, American, 6, 2017-11-14, 0
-- Hosoonyi, Korean, 10, 2017-10-10, 0
-- PhoBrothers, Vietnamese, 25, 2018-07-23, 1

.mode list
.separator "|"
select * from MyRestaurants;
-- Isarn|Thai|9|2018-01-30|1
-- WildWasabi|Japanese|6|2018-04-21|1
-- Chipotle|Mexican|7|2016-08-04|NULL
-- AppleBees|American|6|2017-11-14|0
-- Hosoonyi|Korean|10|2017-10-10|0
-- PhoBrothers|Vietnamese|25|2018-07-23|1

.header on
select * from MyRestaurants;
-- Name|TypeOfFood|Distance|LastVisit|LikeOrNot
-- Isarn|Thai|9|2018-01-30|1
-- WildWasabi|Japanese|6|2018-04-21|1
-- Chipotle|Mexican|7|2016-08-04|NULL
-- AppleBees|American|6|2017-11-14|0
-- Hosoonyi|Korean|10|2017-10-10|0
-- PhoBrothers|Vietnamese|25|2018-07-23|1

.header off
select * from MyRestaurants;
-- Isarn|Thai|9|2018-01-30|1
-- WildWasabi|Japanese|6|2018-04-21|1
-- Chipotle|Mexican|7|2016-08-04|NULL
-- AppleBees|American|6|2017-11-14|0
-- Hosoonyi|Korean|10|2017-10-10|0
-- PhoBrothers|Vietnamese|25|2018-07-23|1

.mode column
.width 15
select * from MyRestaurants;
-- Isarn            Thai        9           2018-01-30  1         
-- WildWasabi       Japanese    6           2018-04-21  1         
-- Chipotle         Mexican     7           2016-08-04  NULL          
-- AppleBees        American    6           2017-11-14  0         
-- Hosoonyi         Korean      10          2017-10-10  0         
-- PhoBrothers      Vietnamese  25          2018-07-23  1         

.header on
select * from MyRestaurants;
-- Name             TypeOfFood  Distance    LastVisit   LikeOrNot 
-- ---------------  ----------  ----------  ----------  ----------
-- Isarn            Thai        9           2018-01-30  1         
-- WildWasabi       Japanese    6           2018-04-21  1         
-- Chipotle         Mexican     7           2016-08-04  NULL          
-- AppleBees        American    6           2017-11-14  0         
-- Hosoonyi         Korean      10          2017-10-10  0         
-- PhoBrothers      Vietnamese  25          2018-07-23  1         

.header off
select * from MyRestaurants;
-- Isarn            Thai        9           2018-01-30  1         
-- WildWasabi       Japanese    6           2018-04-21  1         
-- Chipotle         Mexican     7           2016-08-04  NULL          
-- AppleBees        American    6           2017-11-14  0         
-- Hosoonyi         Korean      10          2017-10-10  0         
-- PhoBrothers      Vietnamese  25          2018-07-23  1   