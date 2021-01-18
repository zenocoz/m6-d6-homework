-- 1
SELECT * FROM public.customers WHERE country = 'Germany'
--2
UPDATE public.customers  SET country='United Kingdom' WHERE country='UK'
--3
DELETE FROM public.customers WHERE fax IS NULL
--4
INSERT INTO public.customers VALUES('STRVE','Strive', 'Federico Soncini', 'Mr', 'Rykestrasse 7', 'Berlin', 'Europe', '10405', 'Germany', '77854890', null)
INSERT INTO public.customers VALUES('FSLJR','Strive', 'Franco Sala', 'Journalist', null, 'Milano', 'Europe', null, 'Italy', null, null)
INSERT INTO public.customers VALUES('DVDSP','Strive', 'Dovladov', 'Psychotherapist', 'Nesvski Prospekt', 'St Petersburg', 'Ru', '10405', 'Russia', '77854890', null)
INSERT INTO public.customers VALUES('GRJJJ','Strive', 'Gino Romani', 'Teacher', null, null, 'Asia', null, 'Japan', '77854890', null)
INSERT INTO public.customers VALUES('TBBQS','Strive', 'Tom Brady', 'Quarterback', 'n.a', 'Tampa Bay', 'North America', null, 'US', null, null)
INSERT INTO public.customers VALUES('PRLAND','Strive', 'Andrea Pirlo', 'Football trainer', null, 'Torino', 'Europe', null, 'Italy', null, null)
--5
SELECT * FROM public.customers WHERE contact_title='Sales Representative'
--6
UPDATE public.customers SET company_name='Linkedin' WHERE customer_id='BOTTM'
--7
SELECT * FROM public.customers WHERE region=null AND country='USA'
--8
DELETE from public.customers WHERE postal_code='1734'
--9
SELECT * FROM public.customers WHERE contact_title='Owner'
--10
SELECT company_name, contact_name, contact_title FROM public.customers WHERE country='Brazil'
--11
SELECT contact_name AS name, contact_title AS title from public.customers WHERE country='Finland'
--12
DELETE from public.customers WHERE city='Lyon'
--13
UPDATE public.customers SET region='Unknown' WHERE region IS NULL


--Article Table Set
CREATE TABLE IF NOT EXISTS 

articles(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, headline VARCHAR(50) NOT NULL, subhead VARCHAR(30) NOT NULL, content 
VARCHAR(500) NOT NULL, category VARCHAR(20), author VARCHAR(20), claps VARCHAR(100), reviews VARCHAR(100), cover VARCHAR(100) )

authors(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, name VARCHAR(20) NOT NULL, img VARCHAR(100))

reviews(id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY, text VARCHAR(500), user VARCHAR(20) NOT NULL )
