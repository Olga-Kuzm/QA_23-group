create table employees (
id serial primary key, 
employee_name varchar(50) not null
);
select * from employees;

insert into employees (id, employee_name) values (default, 'Карина Моуг');

create table salary(
id serial primary key,
monthly_salary int not null
);

select * from salary;

insert into salary (id, monthly_salary) 
values (default, 2500);


create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
);

select * from employee_salary;

insert into employee_salary (id,employee_id, salary_id)
values (default, 35, 4);

create table roles(
id serial primary key,
role_name int not null unique
);

alter table roles 
alter column role_name type varchar(30)
using role_name::varchar(30);

insert into roles (id,role_name)
values (default, 'Senior Automation QA engineer');

select * from roles;

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) references employees (id),
foreign key (role_id) references roles (id)
);

select * from roles_employee;

insert into roles_employee (id, employee_id, role_id)
values (default,62,15);


