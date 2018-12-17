-- Seoyoung Park
-- CSE 414
-- Homework 2

CREATE TABLE FLIGHTS
   (fid int primary key,
	month_id int,
	day_of_month int,
	day_of_week_id int,
	carrier_id varchar(7),
	flight_num int,
	origin_city varchar(34),
	origin_state varchar(47),
    dest_city varchar(34),
    dest_state varchar(46),
    departure_delay int,
    taxi_out int,
    arrival_delay int,
    canceled int,
    actual_time int,
    distance int,
    capacity int,
    price int);
 
CREATE TABLE CARRIERS
   (cid varchar(7) primary key,
    name varchar(83));
 
CREATE TABLE MONTHS
   (mid int primary key,
    month varchar(9));
 
CREATE TABLE WEEKDAYS
   (did int primary key,
    day_of_week varchar(9));

PRAGMA foreign_keys=ON;

.mode csv

.import flights-small.csv FLIGHTS
.import carriers.csv CARRIERS
.import months.csv MONTHS
.import weekdays.csv WEEKDAYS