
-- create table in a DB, defines the name and between brackets the definition

create table sakila.public.user_logins
(user_id varchar(8))
;

-- create a visualization of the set of data we would like to have - careful  is virtual no actual modification of data
-- if a statement starts with "select" is just virtual fetching of data

select 
lower(concat(substring(first_name,1,1), substring(last_name,1,7))) as User_id
from actor a2 
;

-- actual inserting data into newly created table

insert INTO user_logins 
select 
lower(concat(substring(first_name,1,1), substring(last_name,1,7))) as User_id
from actor a2 
;

-- visualization of the final results for checking
select*
from user_logins ul
;

-- update data and make it upper case


update user_logins
set user_id = upper(user_id)
;

-- cleaning up all the values but leaving the structure of the table
delete from user_logins 
where user_id !=''
;