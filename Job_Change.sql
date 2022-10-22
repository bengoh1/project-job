-- Capstone

/* 5 .csv tables were imported to SQL Database, namely:-
Enrollee
Employment
Education
City_Dev_Index
Job_Change
*/


-- Data Cleaning
-- change null values to undeclared
update enrollee
set gender = 'undeclared'
where gender is null;

update employment
set company_size = 'undeclared'
where company_size is null;

update employment
set company_type = 'undeclared'
where company_type is null;

-- change null values to 0
update employment
set last_new_job = 0
where last_new_job is null;

update employment
set experience = 0
where experience is null;

-- create primary key for enrollee_id in Enrollee table
alter table enrollee
alter column enrollee_id int not null;

alter table enrollee
add constraint pk_enrollee primary key (enrollee_id);

-- for City_Dev_Index table
-- set city development index column's value to 3 decimal places
alter table city_dev_index
alter column city_development_index decimal (4,3)

-- create primary key for city in City_Dev_Index table
alter table city_dev_index
alter column city nvarchar(50) not null;

alter table city_dev_index
add constraint pk_city primary key (city);


-- create foreign key for enrollee_id in Employment table
alter table employment
alter column enrollee_id int not null;

alter table employment
add constraint fk_emp_enr
foreign key (enrollee_id) references enrollee(enrollee_id);


-- create foreign key for enrollee_id in Education table
alter table education
alter column enrollee_id int not null;

alter table education
add constraint fk_edu_enr
foreign key (enrollee_id) references enrollee(enrollee_id);


-- create foreign key for city in Enrollee table
alter table enrollee
add constraint fk_cit_enr
foreign key (city)  references city_dev_index (city);


-- create foreign key for enrollee_id in Job_change table
alter table job_change
alter column enrollee_id int not null;

alter table job_change
add constraint fk_job_enr
foreign key (enrollee_id) references enrollee (enrollee_id);


--join employment, enrollee, education and job_change tables
select *
from employment em inner join enrollee en
on (em.enrollee_id=en.enrollee_id)
inner join education ed
on (en.enrollee_id=ed.enrollee_id)
inner join job_change jo
on (ed.enrollee_id=jo.enrollee_id)


select gender, city, relevant_experience, experience, company_size, company_type,
last_new_job, enrolled_university, education_level, major_discipline, training_hours,
case
	when outcome = 0 then 'Stay'
	when outcome = 1 then 'Move'
end outcome
from employment em inner join enrollee en
on (em.enrollee_id=en.enrollee_id)
inner join education ed
on (en.enrollee_id=ed.enrollee_id)
inner join job_change jo
on (ed.enrollee_id=jo.enrollee_id);




