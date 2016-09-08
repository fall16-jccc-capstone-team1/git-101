/*Problem 1*/
set serveroutput on;
declare
num_var number := 10;
begin
dbms_output.put_line('The value of num is: '|| num_var);
end;
/

/*Problem 2*/
declare
num_student_var number(8,2);
begin
select count(*)
into num_student_var
from Student.student;
dbms_output.put_line('count of students: '||num_student_var);
end;
/

/*Problem 3*/
declare
title_var student.employee.title%TYPE;
salary_var student.employee.salary%TYPE;
begin
select title, salary
into title_var,salary_var
from student.employee
where NAME = 'Stella';
dbms_output.put_line('Stellas title is: '||title_var||', and her salary is: '||
salary_var);
end;
/

/*Problem 4*/
declare
high_invoice_var varchar(15);
low_invoice_var varchar(15);
begin
select to_char(max(invoice_total),'$99999.99'), to_char(min(invoice_total),'$99999.99')
into high_invoice_var, low_invoice_var
from ap.invoices;
dbms_output.put_line('Highest invoice total: '||high_invoice_var);
dbms_output.put_line('Lowest invoice total: '||low_invoice_var);
end;
/ 

/*Problem 5*/
declare
latest_due_var ap.invoices.invoice_due_date%type;
begin
select max(invoice_due_date)
into latest_due_var
from ap.invoices;
if latest_due_var < '19-JUL-2008'then
  dbms_output.put_line('Overdue');
else
  dbms_output.put_line('OK');
  end if;
end;
/

/*Problem 6*/
declare
state_var om.customers.customer_state%type;
begin
select customer_state
into state_var
from om.customers
where customer_id = 15;
case state_var
when 'WI' then
  dbms_output.put_line('Cold Winters');
When 'CA' then
  dbms_output.put_line('Moderate Winters');
else
;
end case;
end;
/

/*Problem 7*/
begin
for i in 1..3 loop
  DBMS_output.put_line('i: '||i);
end loop;
end;
/

begin
for i in 3..1 loop
  DBMS_output.put_line('i: '||i);
end loop;
end;
/

begin
i:=1;
while i<4 loop
  dbms_output.put_line('i: '|| i);
  i:= i + 1;
end loop;
end;
/

begin
i:=3;
while i>0 loop
  dbms_output.put_line('i: '|| i);
  i:= i - 1;
end loop;
end;
/

begin
i:=3;
loop
  dbms_output.put_line('i: '|| i);
  i:= i - 1;
  exit when i<=0;
end loop;
end;
/

/*Problem 8*/
declare
