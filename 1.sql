select * from psdb.employees;

select emp_no, first_name from psdb.employees;

select distinct first_name  from psdb.employees; 

select distinct first_name  from psdb.employees
order by first_name;

select distinct first_name  from psdb.employees
order by  first_name desc;

select distinct first_name  from psdb.employees
order by  first_name asc;

select distinct first_name, last_name  from psdb.employees;

select distinct first_name, last_name  from psdb.employees
order by first_name, last_name;

select distinct first_name, last_name  from psdb.employees
order by first_name desc, last_name desc;

select distinct first_name, last_name  from psdb.employees
order by first_name asc, last_name asc;

select * from psdb.employees limit 100;

select * from psdb.employees
order by emp_no
limit 100;

select * from psdb.employees
order by emp_no asc
limit 100;

select * from psdb.employees
order by emp_no desc
limit 100;

select * from psdb.employees
where first_name like 'Basil' and gender like 'M';

select * from psdb.employees
where first_name like 'Basil' and gender <> 'M';

select * from psdb.employees
where first_name like 'Basil'
and last_name like 'Strooper'
and gender like 'M';

select * from psdb.employees
where first_name like 'Crist%';

select * from psdb.employees
where first_name like '%zette';

select * from psdb.employees
where first_name like '%zette'
and gender like 'M';

select * from psdb.employees
where first_name like '%arvi%'
and gender like 'M';

select * from psdb.employees
where first_name like 'Yinghua' or first_name like 'Elvis';

select * from psdb.employees
where first_name like 'Yinghua' or first_name like 'Elvis'
and gender like 'M';

select * from psdb.employees
where emp_no = 14037;

select first_name, last_name from psdb.employees
where emp_no = 14037;

select * from psdb.employees
where emp_no IN (14037, 14039, 16039);

select * from psdb.employees
where emp_no >= 14037 and emp_no <= 14047;

select * from psdb.employees
where first_name like 'Crist%'
and emp_no > 485733;

select * from psdb.employees
where first_name like 'Crist%'
and emp_no >= 485733;

select * from psdb.employees
where first_name like 'Crist%'
and emp_no < 13126;

select * from psdb.employees
where first_name like 'Crist%'
and emp_no <= 13126;



































