-- Seoyoung Park
-- CSE 414
-- HOMEWORK 1, Problem 1

create table Edges
(Source int,
 Destination int);
 
insert into Edges values (10,5);
insert into Edges values (6,25);
insert into Edges values (1,3);
insert into Edges values (4,4);

select * from Edges;
-- 10|5
-- 6|25
-- 1|3
-- 4|4

select Source from Edges;
-- 10
-- 6
-- 1
-- 4

select * from Edges 
 WHERE Source > Destination;
-- 10|5

insert into Edges values ('-1','2000');
-- No, because Rigidly-typed database will convert the string
-- into an integer (automatically convert values to the 
-- appropriate datatype).
