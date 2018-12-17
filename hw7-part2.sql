CREATE TABLE Sales(
  name VARCHAR(6),
  discount VARCHAR(3),
  month VARCHAR(3),
  price INT
);

.separator "\t"
.import mrFrumbleData.txt Sales

-- name -> price
SELECT COUNT(*)
FROM Sales s1, Sales s2
WHERE s1.name = s2.name AND s1.price != s2.price;

-- 0 --

-- month -> discount
SELECT COUNT(*)
FROM Sales s1, Sales s2
WHERE s1.month = s2.month AND s1.discount != s2.discount;

-- 0 --

-- name, discount -> month, price
SELECT COUNT(*)
FROM Sales s1, Sales s2
WHERE s1.name = s2.name AND s1.discount = s2.discount AND
      s1.month != s2.month AND s1.price != s2.price;

-- 0 --

-- month, price -> name, discount
SELECT COUNT(*)
FROM Sales s1, Sales s2
WHERE s1.name != s2.name AND s1.discount != s2.discount AND
      s1.month = s2.month AND s1.price = s2.price;

-- 0 --

------------------------------------------------------------
-- name -> price
-- month -> discount
-- name, month -> price, discount
-- name, discount -> price, month
-- month, price -> discount, name
------------------------------------------------------------
/*
Given Sales(name, discount, month, price),
name+ = {name, price} which is neither {name} nor {name, discount, month, price}
so decompose Sales into R1{name, price} and R2{name, discount, month}.

For R2{name, discount, month}, month+ = {month, discount} which doesn't satisfy
BCNF requirements, so decompose it into R21{month, discount} and R22{month, name}

R1{name, price}, R21{month, discount}, and R22{month, name} all meet BCNF requirements.
*/

CREATE TABLE R1(
  name VARCHAR(6) PRIMARY KEY,
  price INT
);

CREATE TABLE R21(
  month VARCHAR(3) PRIMARY KEY,
  discount VARCHAR(3)
);

CREATE TABLE R22(
  month VARCHAR(3),
  name VARCHAR(6),
  FOREIGN KEY(month) REFERENCES R21(month),
  FOREIGN KEY(name) REFERENCES R1(name)
);

INSERT INTO R1 SELECT DISTINCT name, price FROM Sales;
INSERT INTO R21 SELECT DISTINCT month, discount FROM Sales;
INSERT INTO R22 SELECT DISTINCT month, name FROM Sales;

SELECT COUNT(*) FROM R1;
-- 36
SELECT COUNT(*) FROM R21;
-- 12
SELECT COUNT(*) FROM R22;
-- 426
