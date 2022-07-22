DROP DATABASE CMS_DB;
CREATE DATABASE CMS_DB;

--To display the all databases 
SELECT name
FROM sys.databases;

DROP TABLE IF EXISTS contact_info
--contacts personal info
CREATE TABLE contact_info
( contact_id VARCHAR(5) NOT NULL,
first_name VARCHAR(20),
middle_name VARCHAR(20),
last_name VARCHAR(20),
mobile_no VARCHAR(20),
email VARCHAR(20),
dob DATE,
address_line VARCHAR(100),
city VARCHAR(20),
post_code VARCHAR(20),
CONSTRAINT PK_contact PRIMARY KEY (contact_id,last_name)
)
/*select * from contact_info;*/
--Admin info
DROP TABLE IF EXISTS admin_info
CREATE TABLE admin_info
(admin_id VARCHAR(10) NOT NULL,
admin_user_name VARCHAR(20) UNIQUE,
hashed_password VARCHAR(50),
admin_full_name VARCHAR(50),
CONSTRAINT PK_admin PRIMARY KEY (admin_id)
)

INSERT INTO admin_info (admin_id, admin_user_name, hashed_password, admin_full_name) VALUES ('ACD2356', 'admin1', 'ART#45U', 'Admin_name');
--select * from admin_info;

INSERT INTO contact_info (contact_id, first_name, last_name,mobile_no, email, dob, address_line, city, post_code) 
VALUES ('1','Mahesh','Singh','23456783462','xyz@mail.com','2022-07-07','lodha ithink, thane','Thane','400607');
INSERT INTO contact_info (contact_id, first_name,middle_name, last_name,mobile_no, email, dob, address_line, city, post_code) 
VALUES ('2','Suresh','kumar','dhillon','2378456327','tye@mail.com','2022-07-08','mathura nagar','Delhi','400687');
INSERT INTO contact_info (contact_id, first_name, middle_name,last_name,mobile_no, email, dob, address_line, city, post_code) 
VALUES ('3','shubham','prasad','Singh','8970654523','uew@mail.com','2022-07-09','church gate','Mumbai','400567');
select * from contact_info;