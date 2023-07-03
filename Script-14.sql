create table employees (
    id INT auto_increment primary key,
    first_name VARCHAR(50) not null,
    last_name VARCHAR(50) not null,
    change_date DATETIME default null
);

create table Salaries (
    employeeNumber int primary key,
    salary decimal(10,2) not null DEFAULT 0
);
create table SalaryBudgets(
    total decimal(15,2) not null
);
insert into Salaries(employeeNumber,salary) values
    (1002,5000),
    (1056,7000),
    (1076,8000);
insert into SalaryBudgets(total) select SUM(salary) from Salaries;

select * from employees
select * from salaries
select * from salarybudgets

DROP TRIGGER IF EXISTS before_employee_insert;

create trigger before_employee_insert
before insert on employees
for each row 
begin	
set @total_names = 5;
set @random_index = floor(rand() * @total_names) + 1;
case @random_index
when @random_index = 1 then set new.first_name = 'John';
when @random_index = 2 then set new.first_name = 'Michael';
when @random_index = 3 then set new.first_name = 'Emily';
when @random_index = 4 then set new.first_name = 'Sophia';
when @random_index = 5 then set new.first_name = 'David';
else set new.first_name = 'Unknown';    
end case;
set new.change_date = now();
end;
insert into employees (last_name) values ( 'Zoroo');
select * from employees

