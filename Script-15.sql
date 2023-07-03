-- wersja awaryjna na wypadek, gdyby nie działał poprzedni kod


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