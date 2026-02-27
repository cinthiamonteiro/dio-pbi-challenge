-- Alteração de tabelas existentes
alter table employee add column FullName varchar(35);
update employee e set FullName = e.Fname || ' ' || e.Lname;

-- Criação de visualizações (joins)

create view employee_department as
	select e.FullName, d.Dname, dl.Dlocation
	from employee e 
	left join department d on e.Dno = d.Dnumber
	left join dept_locations dl on d.Dnumber = dl.Dnumber;

create view employee_manager as 
	select e.Ssn as employee_ssn, e.FullName as employee_fullname, m.Ssn as mgr_ssn, m.FullName as mgr_name
	from employee e
	left join employee m on e.Super_ssn = m.Ssn;

create view dpt_name_location as
	select d.Dnumber, d.Dname || '-' || dl.Dlocation as NameLocation
	from department d
	left join dept_locations dl on d.Dnumber = dl.Dnumber;