--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees e 
join employee_salary es on e.id = employee_id
join salary s on es.salary_id = s.id;

-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name, monthly_salary from employees e 
join employee_salary es on e.id = employee_id
join salary s on es.salary_id = s.id
where monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from salary s
left join employee_salary es on s.id = es.salary_id 
left join employees e on e.id = es.employee_id 
where e.id is null and salary_id is not null;


 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary from salary s
left join employee_salary es on s.id = es.salary_id 
left join employees e on e.id = es.employee_id 
where e.id is null and salary_id is not null and monthly_salary < 2000;


 --5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name, salary_id from employees e 
left join employee_salary es on e.id = es.employee_id
where es.salary_id is null;


 --6. ������� ���� ���������� � ���������� �� ���������.
select employee_name, role_name from employees e 
full join roles_employee re on e.id = re.employee_id 
full join roles r on r.id = re.role_id; 

 --7. ������� ����� � ��������� ������ Java �������������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id
where role_name like'%Java developer';

 --8. ������� ����� � ��������� ������ Python �������������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where role_name like '%Python%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select employee_name, role_name from employees e 
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where role_name like '%QA%';

 --10. ������� ����� � ��������� ������ QA ���������.
select employee_name, role_name from employees e
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%Manual QA%';

 --11. ������� ����� � ��������� ��������������� QA
select employee_name, role_name from employees e
join roles_employee re on e.id = re.employee_id 
join roles on re.role_id = roles.id 
where role_name like '%Automation QA%';

-- 12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary, role_name from employees e
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id 
where role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary, role_name from employees e
full join employee_salary es on e.id = es.employee_id 
full join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary, role_name from employees e
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
where role_name like '%Senior%';

 --15. ������� �������� Java �������������
select monthly_salary, role_name from salary s
join employee_salary es on s.id = es.salary_id 
join employees e on e.id = es.employee_id 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id 
where role_name like '%Java developer%';

 --16. ������� �������� Python �������������
select monthly_salary, role_name from salary s
join employee_salary es on s.id = es.salary_id 
join employees e on e.id = es.employee_id 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id 
where role_name like '%Python developer%';

 --17. ������� ����� � �������� Junior Python �������������
select employee_name, monthly_salary, role_name from employees e
join employee_salary es on e.id = es.employee_id
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = e.id
join roles r on r.id = re.role_id 
where role_name like '%Junior Python%';



 --18. ������� ����� � �������� Middle JS �������������
select employee_name, monthly_salary, role_name from employees e
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id 
where role_name like'%Middle JavaScript%';


 --19. ������� ����� � �������� Senior Java �������������
select employee_name, monthly_salary, role_name from employees e
join employee_salary es on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
join roles_employee re on re.employee_id = e.id
join roles r on re.role_id = r.id 
where role_name like'%Senior Java developer%';

-- 20. ������� �������� Junior QA ���������
select monthly_salary, role_name from salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id
join roles r on r.id = re.role_id 
where role_name like '%Junior%QA%';


-- 21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) from salary s
join employee_salary es on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id
join roles r on r.id = re.role_id 
where  role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(monthly_salary) from salary s 
join employee_salary es on s.id = es.salary_id 
join roles_employee re on re.employee_id = es.employee_id
join roles r on r.id = re.role_id 
where  role_name like '%JavaScript%';

 --23. ������� ����������� �� QA ���������
select min(monthly_salary) from salary s 
join employee_salary es on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%QA%';



 --24. ������� ������������ �� QA ���������
select max(monthly_salary) from salary s 
join employee_salary es on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%QA%';


 --25. ������� ���������� QA ���������
select count(employee_id) from roles_employee re 
join roles r on r.id = re.role_id 
where role_name like '%QA%';

 --26. ������� ���������� Middle ������������.
select count(employee_id) from roles_employee re 
join roles r on r.id = re.role_id 
where role_name like '%Middle%';


 --27. ������� ���������� �������������
select count(role_name) from roles_employee re
join roles r on r.id = re.role_id 
where role_name like '%developer%';

 --28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) from salary s
join employee_salary es on es.salary_id = s.id 
join roles_employee re on re.employee_id = es.employee_id 
join roles r on r.id = re.role_id 
where role_name like '%developer%';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
full join employee_salary es on es.employee_id = e.id
full join salary s on s.id = es.salary_id 
order by monthly_salary;


-- 30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary;

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where monthly_salary <2300
order by employee_name, role_name, monthly_salary;

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from employees e 
full join roles_employee re on re.employee_id = e.id 
full join roles r on r.id = re.role_id 
join employee_salary es on es.employee_id = e.id
join salary s on s.id = es.salary_id 
where monthly_salary in (1100,1500,2000)
order by monthly_salary;


