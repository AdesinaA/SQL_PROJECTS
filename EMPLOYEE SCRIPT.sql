-- TASK 1
create database if not exists sales;
use sales;
CREATE TABLE customers (
    customer_id INTEGER,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INTEGER
);
select * from customers;
-- TASK 2
CREATE TABLE items (
    item_code VARCHAR(255),
    item VARCHAR(255),
    unit_price NUMERIC(10 , 2 ),
    company_id VARCHAR(255)
);
-- TASK 3
CREATE TABLE companies (
    company_id VARCHAR(255),
    company_name VARCHAR(255),
    headquarters_phone_number INTEGER(12)
);
drop table customers;
drop table items;
drop table companies;
-- TASK 4 
CREATE TABLE customers (
    customer_id INTEGER AUTO_INCREMENT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_complaints INTEGER,
    PRIMARY KEY (customer_id)
);
select * from customers;
alter table customers add column gender enum ('M','F') after last_name;
select * from customers;
insert into customers (first_name, last_name, gender, email_address, number_of_complaints) value ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0); 
select * from customers;
-- TASK 5
create table companies (company_id varchar (255), company_name varchar (255) default ('X'), headquarter_phone_number varchar (255), unique key (headquarter_phone_number));
-- TASK 6
select * from companies;
alter table companies change column headquarter_phone_number headquarter_phone_number varchar(255) not null;
-- TASK 7
USE EMPLOYEES;
-- TASK 8
SELECT 
    *
FROM
    EMPLOYEES;
-- TASK 9
SELECT 
    *
FROM
    departments;
-- TASK 10
SELECT 
    dept_no
FROM
    departments;
-- TASK 11   
SELECT 
    *
FROM
    employees;
    -- TASK 12
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Elvis';
-- TASK 13
SELECT
    *
FROM
    employees
WHERE
    gender = 'F' AND first_name = 'Kellie';
-- TASK 14
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'kellie' OR 'Aruna';
-- TASK 15
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F' AND (first_name = 'kellie'
        OR first_name = 'Bezalel');
-- TASK 16
SELECT 
    *
FROM
    employees
WHERE
    first_name IN ('Dennis' , 'Elvis');
-- TASK 17
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND first_name IN ('Kellie' , 'Bezalel');
-- TASK 18
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Mark' , 'John', 'Jacob');
-- TASK 19
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar%');
-- TASK 20
SELECT 
    *
FROM
    employees
WHERE
    hire_date LIKE ('%2000%');
-- TASK 21
SELECT 
    *
FROM
    employees
WHERE
    emp_no LIKE ('1000%');
-- TASK 22
SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Jack%');
-- TASK 23
SELECT 
    *
FROM
    EMPLOYEES
WHERE
    first_name NOT LIKE ('Jack%');
-- TASK 24
select * from salaries;
select * from salaries where salary between 60000 and 70000;
-- TASK 25
SELECT * FROM departments;
select * from departments where dept_no is null;
select * from departments where dept_no is not null;
-- TASK 26
SELECT * FROM salaries;
SELECT 
    *
FROM
    salaries
WHERE
    salary > 150000;
SELECT 
    *
FROM
    employees
WHERE
    gender = 'F'
        AND hire_date > '2000-01-01';
-- TASK 27
SELECT DISTINCT
    hire_date
FROM
    employees;
SELECT DISTINCT
    first_name, last_name
FROM
    employees;
-- TASK 28
SELECT * FROM EMPLOYEES ORDER BY hire_date desc;
select * from employees order by hire_date asc;
-- TASK 29
select * from salaries;
SELECT 
    COUNT(*)
FROM
    salaries
WHERE
    salary > - 150000;
SELECT 
    *
FROM
    employees;
SELECT 
    *
FROM
    dept_manager;
SELECT DISTINCT
    emp_no
FROM
    dept_manager;
-- TASK 30
SELECT * FROM SALARIES;
SELECT salary, count(emp_no) as 'emps_with_same_salary' from salaries where salary > 80000 group by salary order by salary asc;
-- TASK 31
SELECT * FROM dept_manager;
SELECT DISTINCT emp_no, dept_no from dept_manager;
-- TASK 32
SELECT * FROM SALARIES;
SELECT * FROM EMPLOYEES;
SELECT *, AVG(salarY) FROM SALARIES WHERE SALARY > 120000 GROUP BY emp_no order by emp_no;
SELECT *, AVG(salarY) FROM SALARIES GROUP BY emp_no HAVING salary > 120000;
select * from employees;
-- TASK 33
select first_name, count(first_name) as name_count from employees group by first_name having count(first_name) > 253;
-- TASK 34
select first_name, count(first_name) from employees where hire_date > '1999-01-01' group by first_name having count(first_name) < 200 order by first_name asc;
-- TASK 35
select * from dept_emp;
select emp_no, count(emp_no) as count_emp from dept_emp where from_date > '2000-01-01' group by emp_no having count(emp_no) > 1 order by emp_no asc;
-- TASK 36
select * from employees where emp_no = 99999;
select * from dept_emp limit 10;
-- INSERT STATEMENT 
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (999901, '1997-04-15', 'John', 'Smith', 'M', '2022-03-27');
select * from employees order by emp_no desc;
-- TASK 37
select * from titles limit 10;
insert into titles (emp_no, title, from_date) values (999903, 'Senior Engineer', '1997-08-01');
select * from employees;
insert into employees values (999903, '1977-09-14', 'Johnathan', 'Creek', 'M', '1999-01-01');
select * from employees where first_name = 'Johnathan';
-- TASK 38
select * from dept_emp;
insert into dept_emp values (999903, 'd005', '1997-08-01', '9999-01-01');
select * from dept_emp order by emp_no desc;
select * from departments;
create table departments_dub (dept_no char (4) not null, dept_name varchar (40) not null);
select * from departments_dub;
insert into departments_dub select * from departments;
select * from departments_dub order by dept_no asc;
-- TASK 39 
INSERT INTO departments values ('d010', 'Business Analysis');
select * from departments order by dept_no desc;
-- UPDATE STATEMENT
select * from employees where first_name = 'john';
update employees set first_name = 'samuel', last_name = 'Fadare', birth_date = '1997-04-15' where emp_no = 999901;
select * from employees where emp_no = 999901;
-- TASK 40
select * from departments where dept_name = 'Business Analysis';
insert into departments value ('d011', 'mechanic');
select * from departments where dept_name like 'bus%';
update departments set dept_name = 'Data Analysis' where dept_no = 'd010';
select * from departments;
-- DELETE, TRUNCATE AND DROP
delete from departments where dept_no = 'd011';
select * from departments where dept_no = 'd009';
delete from departments where dept_no = 'd009';
truncate departments_dub;
select * from departments_dub;
-- COMMMIT AND ROLLBACK 
commit;
select * from departments where dept_no = 'd010';
rollback;
select * from departments_dub where dept_no = 'd009';
insert into departments values ('d009', 'Customer Service');
select * from departments where dept_no = 'd010';
-- TASK 41
delete from departments where dept_no = 'd010';
-- AGGREGATE FUNCTIONS
select * from salaries;
select salary, count(salary) as 'salary count' from salaries group by salary order by salary desc;
select count(distinct(salary)) from salaries;
select count(salary) from salaries;
select * from dept_emp;
select count(distinct(dept_no)) from dept_emp;
select count(dept_no) from dept_emp;
select sum(salary) from salaries;
drop table sales;
select sum(salary) from salaries where from_date > '1997-01-01';
select min(salary) from salaries;
select * from salaries;
select distinct(emp_no), min(salary) from salaries group by emp_no;
select emp_no, max(salary) from salaries;
select * from salaries where salary in ('158220', '38735');
select * from salaries where emp_no = 10001;
select min(emp_no) from employees;
select max(emp_no) from employees;
select avg(salary) from salaries;
select avg(salary) from salaries where from_date > '1997-01-01';
select round(avg(salary)) from salaries;
select round(avg(salary)) from salaries where from_date > '1997-01-01';
select * from departments_dub;
insert into departments_dub select * from departments;
select * from departments_dub;
select * from dept_manager;
select * from departments;
drop table departments_dub;
create table departments_dub(dept_no char (4) not null, dept_name varchar(50), dept_manager varchar (40));
select * from departments_dub;
drop table departments_dub;
create table departments_dub(dept_no char(4) not null, dept_name varchar (40));
select * from departments_dub;
insert into departments_dub select * from departments;
select * from departments_dub;
alter table departments_dub add column dept_manager varchar (50);
select * from departments_dub;
select dept_no, ifnull(dept_name, 'department not given') as 'dept_details' from departments_dub;
select dept_no, dept_name, coalesce(dept_name, dept_manager, 'N/A') from departments_dub;
select dept_no, dept_name, coalesce('nothing to see') from departments_dub;
select dept_no, dept_name, coalesce(dept_name, dept_no) as 'dept_info' from departments_dub;
select dept_no, dept_name, ifnull(dept_no, 'N/A'), ifnull(dept_name, 'department not provided') from departments_dub;
select * from dept_manager_dub order by emp_no desc;
select * from departments_dub;
-- INNER JOIN
select * from departments_dub;
select * from dept_manager_dub;
SELECT 
    d.dept_no,
    d.dept_no,
    d.dept_name,
    m.emp_no,
    m.from_date,
    m.from_date,
    m.to_date
FROM
    departments_dub d
        INNER JOIN
    dept_manager_dub m ON d.dept_no = m.dept_no;
-- EXERCISE 31
select * from employees;
select * from dept_manager;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    d.dept_no,
    d.from_date,
    d.to_date
FROM
    employees e
        INNER JOIN
    dept_manager d ON d.emp_no = e.emp_no
GROUP BY dept_no
ORDER BY emp_no ASC;
-- LEFT JOIN
SELECT 
    d.dept_no,
    d.dept_no,
    d.dept_name,
    m.emp_no,
    m.from_date,
    m.from_date,
    m.to_date
FROM
    departments_dub d
        LEFT JOIN
    dept_manager_dub m ON d.dept_no = m.dept_no;
SELECT 
    d.dept_no,
    d.dept_no,
    d.dept_name,
    m.emp_no,
    m.from_date,
    m.from_date,
    m.to_date
FROM
    departments_dub d
        LEFT JOIN
    dept_manager_dub m ON d.dept_no = m.dept_no;
-- TASK 42
select * from employees;
select * from dept_manager;
select e.emp_no, e.first_name, e.last_name, e.gender, e.hire_date, d.dept_no, d.from_date, d.to_date
from employees e
left outer join dept_manager d on d.emp_no = e.emp_no
where e.last_name = 'Markovitch'
order by emp_no asc, dept_no;
-- RIGHT JOIN
SELECT 
    d.dept_no,
    d.dept_no,
    d.dept_name,
    m.emp_no,
    m.from_date,
    m.from_date,
    m.to_date
FROM
    departments_dub d
        RIGHT OUTER JOIN
    dept_manager_dub m ON d.dept_no = m.dept_no;
SELECT * FROM DEPT_MANAGER_DUB;
-- OLD JOIN QUERY 
select * from salaries;
select * from dept_manager;
select * from departments;
select * from employees;
select e.first_name, e.last_name, d.emp_no, e.hire_date, d.from_date, d.to_date, e.gender, d.dept_no, s.salary
from dept_manager d
join employees e on e.emp_no = d.emp_no
join departments f on d.dept_no = f.dept_no
join salaries s on s.emp_no = d.emp_no
group by e.first_name
order by s.salary desc;
-- TASK 43
select * from employees;
select * from dept_manager;
select d.emp_no, d.dept_no, e.first_name, e.last_name, e.hire_date
from dept_manager d, employees e
where d.emp_no = e.emp_no;
-- PREVENT ERROR CODE
set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');
-- TASK 44
select * from employees;
select * from titles;
select e.first_name, e.last_name, e.hire_date, e.emp_no, t.title
from employees e
join titles t on t.emp_no = e.emp_no
where e.first_name = 'Margareta' and e.last_name = 'Markovitch';
-- CROSS JOIM
select * from employees;
select * from salaries;
select e.emp_no, s.salary from employees e cross join salaries s order by salary desc limit 10;
-- TASK 45
select * from employees;
select * from dept_emp;
select * from departments;
select * from salaries;
select * from titles;
SELECT 
    e.emp_no,
    e.birth_date,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    d.dept_name,
    t.title,
    s.salary
FROM
    employees e
        JOIN
    dept_emp o ON e.emp_no = o.emp_no
        JOIN
    salaries s ON s.emp_no = e.emp_no
        JOIN
    titles t ON s.emp_no = t.emp_no
        JOIN
    departments d ON d.dept_no = o.dept_no
ORDER BY s.salary DESC;
select e.emp_no, e.first_name, e.last_name, e.gender, d.dept_name from employees e cross join departments d;
-- TASK 46
select * from dept_manager;
select * from departments;
SELECT 
    e.emp_no, e.dept_no, e.from_date, e.to_date, d.dept_name
FROM
    dept_manager e
        CROSS JOIN
    departments d
where d.dept_no = 'd009';
-- TASK 47
select * from employees;
select * from departments;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    d.dept_no,
    d.dept_name
FROM
    employees e
        CROSS JOIN
    departments d;
-- AGGREGATE FUNCTIONS AND JOIN 
select * from employees;
select * from salaries;
select e.gender, avg(s.salary) as 'Average Salary' from employees e join salaries s on e.emp_no = s.emp_no group by e.gender;
select gender, count(gender) from employees group by gender;
-- joining more than two tables 
select * from employees;
select * from dept_emp;
select * from departments;
SELECT 
    e.emp_no,
    e.first_name,
    e.last_name,
    e.gender,
    e.hire_date,
    o.dept_no,
    d.dept_name
FROM
    employees e
        JOIN
    dept_emp o ON e.emp_no = o.emp_no
        JOIN
    departments d ON o.dept_no = d.dept_no;
-- TASK 48 SALARY MADE BY EACH DEPARTMENTS
select * from departments order by dept_no asc;
select * from salaries; 
select * from dept_emp;
select e.dept_no, d.dept_name, sum(s.salary) as 'salary_sum' from departments d join dept_emp e on d.dept_no = e.dept_no join salaries s on s.emp_no = e.emp_no group by e.dept_no order by s.salary asc;
-- TASK 49
select * from dept_manager; -- f
select * from departments; -- d
select * from employees; -- e
select * from titles; -- t
select e.first_name, e.last_name, e.hire_date, t.title, t.from_date, t.to_date, d.dept_no from employees e join titles t on t.emp_no = e.emp_no join dept_manager f on f.emp_no = e.emp_no join departments d on d.dept_no = f.dept_no where t.title = 'manager';
-- TASK 50
select * from salaries;
select * from dept_manager;
select * from departments;
select d.dept_name, avg(s.salary) as 'avg_salary' from departments d join dept_manager f on d.dept_no = f.dept_no join salaries s on s.emp_no = f.emp_no group by d.dept_name; 
-- TASK 51
select * from employees;
select * from titles;
select * from departments;
select * from dept_manager;
select e.gender, count(e.gender) as 'gender_count' from employees e join titles t on t.emp_no = e.emp_no where t.title = 'manager' group by e.gender order by gender_count desc;
