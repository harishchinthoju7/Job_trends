-- select * from bi;

-- alter table bi
-- change `Unique ID` Unique_ID Varchar(500);

-- alter table bi
-- change `Time Taken (America/New_York)` Time_taken VARCHAR(50);

-- select time_taken, concat('00:',Time_taken)
-- from Bi;

-- update bi
-- set time_taken = concat('00:',time_taken) ;


-- alter table bi
-- change `Q3 - Current Yearly Salary (in USD)` `Current_annual_salary` varchar(100);

-- select current_annual_salary, replace(current_annual_salary, 'k', '000')  
-- from bi;

-- desc bi;

-- select * from bi;

-- update bi 
-- set time_taken = cast(time_taken as time);

-- alter table bi
-- change `Date Taken (America/New_York)` `Date` VARCHAR(50);

-- SELECT `DATE`, 
-- 	CASE
-- 		WHEN date like '%-%' then str_to_date(`DATE`, '%m-%d-%Y')
--         else str_to_date(`DATE`, '%m/%d/%Y')
-- 	end 
-- from bi;


-- update bi
-- set `date` = CASE
-- 				WHEN `date` like '%-%' then str_to_date(`DATE`, '%m-%d-%Y')
-- 				else str_to_date(`DATE`, '%m/%d/%Y')
-- 			end;

-- desc bi;


-- alter table bi
-- modify column `Date` DATE;


-- alter table bi
-- modify column `Time_taken` varchar(50);

-- select * from bi;

-- alter table bi
-- change `time spent` Time_spent TIME;

-- alter table bi
-- modify column `Time_taken` TIME;

-- select time_taken, replace(time_taken, '00:','')
-- from bi;

-- update bi 
-- set time_taken = replace(time_taken, '00:','');

-- select * from bi;

-- ALTER TABLE BI 
-- change `Q1 - Which Title Best Fits your Current Role?` `CURRENT_ROLE` VARCHAR(500);

-- update bi
-- set current_annual_salary = replace(current_annual_salary, 'k', '000');

-- select * from bi;

-- select country from bi
-- where country != '';

-- alter table bi
-- add column max_salary varchar(50);

-- UPDATE bi
-- set max_salary = current_annual_salary;

-- select max_salary, current_annual_salary
-- from bi;

-- update bi 
-- set max_salary = replace(max_salary, '%-','');

-- desc bi;

-- UPDATE bi
-- SET max_salary = REPLACE(TRIM(max_salary), '%-', '');


-- select max_salary, current_annual_salary
-- from bi
-- ;

-- insert into bi(max_salary)
-- values(current_annaul_salary);
--  
-- update bi 
-- set max_salary=current_annual_salary
-- ;

-- UPDATE bi
-- SET min_salary = SUBSTRING_INDEX(current_annual_salary, '-', 1);

-- select current_annual_salary, SUBSTRING_INDEX(current_annual_salary, '-', 1) as dum
-- from bi;

-- alter table bi
-- add column avg_salary varchar(50);


-- update bi
-- set min_salary = trim(min_salary);

-- select max_salary, trim(max_salary) as trimed from bi;

-- ALTER table bi
-- modify column max_salary int;


-- SELECT * FROM bi 
-- LIMIT 1 OFFSET 366;

-- update bi
-- set current_annual_salary = replace(current_annual_salary, '+',''),
--  max_salary = replace(max_salary, '+',''),
--  min_salary = replace(min_salary, '+','')
-- where current_annual_salary like '%+%';

-- select replace(current_annual_salary, '+',''), replace(min_salary, '+',''), replace(max_salary, '+','')
-- from bi
-- where max_salary like '%+%';

-- update bi
-- set max_salary = replace(max_salary, '+',''),
-- max_salary = replace(max_salary, '+',''),
-- min_salary = replace(min_salary, '+','')
-- where max_salary like '%+%';

-- SELECT * FROM bi;
-- SELECT * FROM bi 
-- LIMIT 1 OFFSET 366;

-- alter table bi
-- modify Current_annual_salary int;

-- desc bi;

-- ALTER TABLE bi 
-- MODIFY COLUMN current_annual_salary int;

-- select * from bi; 

-- select current_role, replace(current_role,'%:','') from bi
-- where current_role like '%:%';

-- select current_role, SUBSTRING_INDEX(current_role, ':', -1) from bi
-- where CURRENT_ROLE like '%:%'; 

-- update bi 
-- set current_role = substring_index(current_role, ':','-1')
-- where current_role like '%:%';


-- insert into bi(avg_salary)
-- select (min_salary + max_salary)/2
-- from bi;

-- select avg_salary, (min_salary + max_salary)/2
-- from bi;

-- select * from bi;

-- delete from bi where email is null;

-- alter TABLE bi
-- rename column `Q4 - What Industry do you work in?` to current_Industry;

-- update bi 
-- set current_industry = substring_index(current_industry, ':','-1')
-- where current_industry like '%:%';

-- select current_industry, substring_index(current_industry, ':','-1')
-- from bi;

-- alter table bi
-- rename column `Q5 - Favorite Programming Language` to Fav_prog_lang;

-- update bi
-- set current_industry = 'aviation'
-- where current_industry like '% air%';

-- select fav_prog_lang , substring_index(fav_prog_lang, ':', -1)
-- from bi
-- WHERE fav_prog_lang LIKE '%:%';

-- select fav_prog_lang, count(substring_index(fav_prog_lang, ':', -1)) 
-- from bi
-- group by fav_prog_lang;

-- select avg_salary from bi;

-- alter table bi 
-- rename column `Q11 - Which Country do you live in?` to home_country;

-- ALTER TABLE bi
-- DROP COLUMN referrer;

-- insert into bi(avg_salary)
-- select (min_salary+max_salary)/2
-- from bi;

-- UPDATE bi
-- SET avg_salary = (min_salary + max_salary) / 2;

-- alter table bi
-- modify column avg_salary int;


-- update bi
-- set fav_prog_lang = substring_index(fav_prog_lang, ':',-1);

-- select fav_prog_lang, replace(fav_prog_lang, 'sql','sql')  
-- from bi
-- where fav_prog_lang like '%sql%';


-- SELECT fav_prog_lang, REPLACE(fav_prog_lang, 'sql', 'SQL') AS updated_fav_prog_lang
-- FROM bi
-- WHERE fav_prog_lang LIKE '%sql%';

-- update bi
-- set fav_prog_lang = 'SQL'
-- where fav_prog_lang like '%sql%';

-- select fav_prog_lang from bi
-- where fav_prog_lang like '%sql%';

-- desc bi;

-- select * from bi;

-- select distinct job_priority from bi;

-- desc bi;

-- select home_country, substring_index(home_country, ':', '-1')
-- from bi;

-- select distinct home_country from bi;


-- update bi
-- set home_country = substring_index(home_country, ':', '-1');

-- update bi
-- set Unique_ID = trim(Unique_ID), Email = trim(Email), CURRENT_ROLE =trim(CURRENT_ROLE), `Switched_career?` = trim(`Switched_career?`),
-- current_annual_salary =trim(current_annual_salary), current_Industry =trim(current_Industry), Fav_prog_lang = trim(Fav_prog_lang), 
-- salary_happy_rating =trim(salary_happy_rating), worklifebal_rating = trim(worklifebal_rating), cowerk_rating = trim(cowerk_rating),
-- mngmt_rating =trim(mngmt_rating), growth_rating = trim(growth_rating), learning_rating =trim(learning_rating), difficulty = trim(difficulty),
-- job_priority =trim(job_priority), gender = trim(gender), home_country = trim(home_country), `Q12 - Highest Level of Education` = trim('Q12 - Highest Level of Education'), 
-- `Q13 - Ethnicity` = trim(`Q13 - Ethnicity`);


-- select distinct home_country from bi;

-- UPDATE bi
-- SET home_country = 'Asia'
-- WHERE home_country = 'aisa';

-- UPDATE bi
-- SET home_country = 'Australia'
-- WHERE home_country LIKE '%austra%';

-- UPDATE bi
-- SET home_country = 'Finland'
-- WHERE home_country LIKE '%Fin%';

-- select distinct home_country
-- from bi
-- where home_country like '%argentin%'
-- order by 1;

-- select * from bi;

-- update bi
-- set home_country = 'Portugal'
-- where home_country like '%Portugsl%';

-- alter table bi
-- modify column Education varchar(100);

-- select * from bi;


-- ALTER TABLE bi_cleaned
-- RENAME COLUMN `Q12 - Highest Level of Education` TO Education;

-- ALTER TABLE bi_cleaned
-- MODIFY COLUMN Education VARCHAR(100);

-- select bi.education, a.education
-- from bi 
-- full join bi_cleaned a
-- on bi.Unique_ID = a.Unique_ID;

-- select * from bic;
-- desc bic;

-- UPDATE bi
-- JOIN bi_cleaned bc
-- ON bi.unique_id = bc.unique_id
-- SET bi.education = bc.education
-- WHERE bc.unique_id IS NOT NULL;

-- SELECT bi.education, bic.education
-- FROM bi
-- full JOIN bic 
-- ON bi.unique_id = bic.unique_id
-- WHERE bic.unique_id IS NULL;

-- alter table bic
-- rename column `Q13 - Ethnicity` to Ethnicity;

-- update bi a 
-- inner join bic b 
-- on a.Unique_ID = b.Unique_ID
-- set a.Education = b.education;

-- alter table bi
-- rename column `Q13 - Ethnicity` to `Ethnicity`;  

-- select distinct Ethnicity from bi;

-- select Ethnicity 
-- from bi
-- order by 1;

-- select Ethnicity from bi 
-- where Ethnicity like '%:%';

-- select distinct substring_index(Ethnicity,':',-1)
-- from bi
-- orderbibi by 1;

-- update bi
-- set ethnicity = substring_index(Ethnicity,':',-1);

-- update bi
-- set Ethnicity = 'Middleast'
-- where Ethnicity like '%Middleeas%';

select * From bi ;
-- where Fav_prog_lang = 'python' 
-- GROUP BY Fav_prog_lang
order by 1;

update bi
set current_Industry = 'Government'
where current_Industry like 'State';

update bi
set current_role = 'Government'
where current_role like 'State';

update bi
set current_Industry = 'Government'
where current_Industry like 'State';



