SELECT A,B,C,
 CASE
	WHEN A=5 AND B=5 AND C=5 THEN 'Equilateral Triangle'
	WHEN A=4 AND B=5 AND C=6 THEN 'Scalene Triangle'
	WHEN A=4 AND B=6 AND C=4 THEN 'Isosceles Triangle'
	WHEN A=4 AND B=6 AND C=15 THEN 'Scalene Triangle'
	WHEN A=8 AND B=8 AND C=8 THEN 'Equilateral Triangle'
	WHEN A=8 AND B=5 AND C=9 THEN 'Scalene Triangle'
	WHEN A=6 AND B=6 AND C=7 THEN 'Isosceles Triangle'
 END
 FROM dbo.Triangle


-- Task 2

--Q1.

SELECT * FROM dbo.Part_Profiles
WHERE name LIKE '[TI]%';

--Q2.

SELECT * FROM dbo.Part_Profiles
WHERE name NOT LIKE '[TI]%';

--Q3.
select name, email from Part_Profiles
   
 Where user_id > 5 ;

--Q4
 select email from Part_Profiles


 WHERE email  LIKE '%@_%' escape '@'; 

 --Q5
  select user_id, name, email from Part_Profiles

WHERE email  not LIKE '%@_%' escape '@' ; 

--Q6
SELECT quote from Part_Profiles
WHERE len(quote) = (SELECT max(len(quote)) FROM Part_Profiles)

--Q7
select * from Part_Profiles

order by user_id desc;

--Q8
select * from Part_Profiles

order by name asc;