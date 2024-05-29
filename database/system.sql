create user project IDENTIFIED by project;

select * from dba_users where username='project'; 

grant all privileges to PROJECT;