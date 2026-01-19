#select
use dummy;
select 1+1;
select concat("decode"," ","data") as fullname;
select now();

#select ..from
#select columnlist from tablename
#order of execution
#from ..select
select * from customers;
select creditlimit,customername,contactLastName
from customers;
select * from employees;
select concat("atelier"," ","graphique") as employee_fullname;
select employeenumber,jobtitle from employees;
select * from products;
select productname,productcode,productline from products;
select concat("murphy"," ","diane") as employeefullname,employeenumber,jobtitle from employees;
select concat(firstname," ",lastname) as employeefullname,employeenumber,jobtitle from employees;
SELECT * FROM ORDERDETAILS;
SELECT ORDERNUMBER,(QUANTITYORDERED*PRICEEACH) AS ORDERVALUE FROM ORDERDETAILS;
SELECT * FROM CUSTOMERS;
SELECT CONTACTLASTNAME,CONTACTFIRSTNAME FROM CUSTOMERS
ORDER BY CONTACTLASTNAME ASC;

SELECT CONTACTLASTNAME,CONTACTFIRSTNAME FROM CUSTOMERS
ORDER BY CONTACTLASTNAME DESC,CONTACTFIRSTNAME ASC;

SELECT ORDERNUMBER,(QUANTITYORDERED*PRICEEACH) AS ORDERVALUE FROM ORDERDETAILS
ORDER BY ORDERVALUE DESC;

SELECT * FROM EMPLOYEES ORDER BY REPORTSTO ASC;
SELECT * FROM PRODUCTS;
SELECT PRODUCTLINE,PRODUCTNAME,PRODUCTCODE,BUYPRICE FROM PRODUCTS
ORDER BY BUYPRICE DESC;
SELECT * FROM EMPLOYEES;
SELECT EMPLOYEENUMBER,CONCAT(FIRSTNAME," ",LASTNAME) AS FULLNAME,JOBTITLE FROM EMPLOYEES
ORDER BY FULLNAME DESC;




#SELECT COLUMNLIST FROM COLUMNNAME
#WHERE SEEARCH CONDITION
#ORDER BY COLUMN;

use dummy;
#FROM--WHERE---SELECT---ORDER BY

#WASQL QUERY TO FETCH CUSTOMER DETAIL?

SELECT * FROM CUSTOMERS;

SELECT * FROM CUSTOMERS
 WHERE COUNTRY="USA";
 SELECT * FROM EMPLOYEES;
 
 SELECT EMPLOYEENUMBER, CONCAT(FIRSTNAME," ",LASTNAME) AS EMPLOYEES_FULLNAME,JOBTITLE FROM EMPLOYEES
 WHERE OFFICECODE=1;
 
 DESC employees;

select * from customers where creditlimit>5000;
select * from orderdetails;
select ordernumber,(quantityordered*priceeach) as ordervalue from orderdetails
where (quantityordered*priceeach)<=4000
order by ordervalue desc;
select * from employees;
select * from employees 
where officecode=1 and jobtitle="sales rep";
select * from employees 

where officecode=1 or jobtitle="sales rep";
select employeenumber,concat(firstname," ",lastname) as fullname,officecode,jobtitle from employees
where officecode=1 or officecode=2 or officecode=3;


#BETWEEN LOW AND HIGH (BOTH L AND H ARE INCLUSIVE)
select employeenumber,concat(firstname," ",lastname) as fullname,officecode,jobtitle from employees
where officecode BETWEEN 1 AND 3;

SELECT employeenumber,concat(firstname," ",lastname) as fullname,officecode,jobtitle from employees
where officecode IN (1,3,5);

select * from customers
where country in("usa","japan","france");
select * from orderdetails;

select * from orders;
select ordernumber,orderdate, status from orders
where orderdate between"2004-01-01" and "2005-12-31";

select * from employees
where officecode in (1,2,3) and jobtitle="sales rep";

select * from employees
where reportsto is null;

select * from customers;
select customername,customernumber,city,country,creditlimit from customers
where creditlimit>5000
order by contactlastname, contactfirstname desc;


select * from employees
where officecode not in (1,3);
select distinct status 
from orders;
select distinct country from customers;

select * from employees;
select concat(firstname, " ", lastname) as employeefullname from employees
where firstname like"t_m";
select * from customers;


select customername from customers
where customername like ("%n");


select * from products;
select productname from products
where productname like("%1900%");

select * from customers;
select customername from customers
where customername like ("%a") or customername like ("%e") or customername
 like("%i") or customername like("%o") or customername like("%u");
 
 select customername from customers
 where right(customername,1) in ('a','e','i','o','u');
 
 
 select * from orders;
 select ordernumber,orderdate,status from orders
 where orderdate between "2003-01-01" and "2004-12-31"
 order by orderdate desc;
 
 select customername,customernumber,city, country from customers
  limit 10;
  
  select customername,customernumber,city, country from customers
  limit 5 offset 0;
  
  select customername,customernumber,city, country from customers
  order by creditlimit desc 
  limit 3;
  
  select customername,customernumber,city,country from customers
  order by creditlimit desc
  limit 3 offset 2;
  
   select customername,customernumber,city, country from customers
   order by creditlimit desc
   limit 2,5; 
   
   select * from customers;
   select customername,city from customers
   order by customername asc
   limit 2,4;
   select * from employees;
   select employeenumber,jobtitle from employees
   order by jobtitle asc
   limit 4,7;