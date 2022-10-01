create database dbdesign;
use dbdesign;
-- Master Table

create table Person(person_id varchar(4), 
first_name varchar(20), middle_name varchar(20), last_name varchar(20), 
gender varchar(20), dob Date, Address varchar(20), 
Primary Key(person_id) );

ALTER TABLE Person
ADD index (dob);

ALTER table Person 
Add constraint valid_person_id check(REGEXP_LIKE(person_id,'^P[0-9][0-9][0-9]'));

create table Person_phone(person_phone_id varchar(20), 
person_phone_no varchar(20), 
Primary Key(person_phone_no) ,
FOREIGN KEY (person_phone_id) REFERENCES Person(person_ID));

create table membership(member_person_id varchar(20) NOT NULL, 
membership_id varchar(20) NOT NULL, 
membership_enrollment_date date,
Primary Key(member_person_id,membership_id),
UNIQUE (membership_id),
FOREIGN KEY (member_person_id) REFERENCES Person(person_ID) );


create table employee(employee_id varchar(20) NOT NULL, 
employee_person_id varchar(20) NOT NULL,
employee_member_id varchar(20) NOT NULL, 
start_date date, salary varchar(10) NOT NULL, 
Age date,
Primary key(employee_id),
FOREIGN KEY (employee_person_id) REFERENCES Person(person_ID) ,
FOREIGN KEY (employee_member_id) REFERENCES membership(membership_id),
FOREIGN KEY (Age) REFERENCES PERSON(dob));

ALTER TABLE EMPLOYEE
ADD Constraint Age_Check check(2022 - YEAR(age) >= 18);



create table gold(gold_person_id varchar(20), 
gold_membership_card_id varchar(20),
Primary key(gold_person_id,gold_membership_card_id),
UNIQUE(gold_membership_card_id),
FOREIGN KEY (gold_person_id) REFERENCES Person(person_ID) );

create table silver(silver_person_id varchar(20), 
Primary key(silver_person_id),
FOREIGN KEY (silver_person_id) REFERENCES Person(person_ID));

create table trainer(trainer_id varchar(20), 
trainer_person_id varchar(20),
Primary key(trainer_id),
FOREIGN KEY (trainer_person_id) REFERENCES Person(person_ID));

create table library_supervisors(library_supervisor_person_id varchar(20), 
trainer_id varchar(20), 
Primary key(library_supervisor_person_id),
FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
FOREIGN KEY (library_supervisor_person_id) REFERENCES person(person_ID));


create table catalog_managers(catalog_manager_person_id varchar(20), 
trainer_id varchar(20), 
Primary key(catalog_manager_person_id),
FOREIGN KEY (trainer_id) REFERENCES trainer(trainer_id),
FOREIGN KEY (catalog_manager_person_id) REFERENCES person(person_ID));

ALTER TABLE catalog_managers
DROP COLUMN catalogged_date ;

create table guest_log(guest_id varchar(20), 
gold_person_id varchar(20), 
member_card_id varchar(20), 
Primary key(guest_id),
Foreign Key(gold_person_id) REFERENCES gold(gold_person_id),
Foreign Key(member_card_id) REFERENCES gold(gold_membership_card_id)
);

create table payment(payment_id varchar(20), 
pay_time time, 
amount int , 
payment_method varchar(20), 
Primary key(payment_id));

create table category(category_number varchar(20), 
Primary key(category_number));

create table books(book_id varchar(20), 
edition varchar(10), 
title varchar(20) , 
category_number varchar(20), 
Primary key(book_id),
Foreign key(category_number) REFERENCES CATEGORY(category_number));

create table author(author_id varchar(20), 
author_name varchar(10), 
Primary key(author_id));

create table publisher(publisher_id varchar(20), 
publisher_name varchar(20), 
Primary key(publisher_id));

-- Select * from publisher

create table library_card(card_id varchar(20), 
member_person_id varchar(20), 
date_of_issue date, 
member_level varchar(10), 
Primary key(card_id),
FOREIGN KEY(member_person_id) REFERENCES person(person_id));

create table promotion(promotion_code varchar(20), 
promo_description varchar(20), 
library_card_id varchar(20), 
Primary key(promotion_code),
FOREIGN KEY(library_card_id) REFERENCES library_card(card_id));

create table receptionist(receptionist_person_id varchar(20), 
trainer_id varchar(20), 
Primary key(receptionist_person_id),
FOREIGN KEY(receptionist_person_id) REFERENCES person(person_id),
FOREIGN KEY(trainer_id) REFERENCES trainer(trainer_id));

create table comments(comment_person_id varchar(20), 
comment_id varchar(20),
rating_score varchar(20),
comment_time time, 
main_content varchar(20), 
comments_book_id varchar(20), 
Primary key(comment_id),
FOREIGN KEY(comment_person_id) REFERENCES person(person_id),
FOREIGN KEY(comments_book_id) REFERENCES books(book_id));

create table borrows(borrow_id varchar(20),
borrows_person_id varchar(20),  
borrows_book_id varchar(20), 
Payment_id varchar(20), 
Receptionist_person_id varchar(20), 
due_date date, 
date_of_issue date, 
Primary key(borrow_id,payment_id, borrows_person_id, borrows_book_id,Receptionist_person_id),
FOREIGN KEY(borrows_person_id) REFERENCES person(person_id),
FOREIGN KEY(borrows_book_id) REFERENCES books(book_id),
FOREIGN KEY(Receptionist_person_id) REFERENCES person(person_id),
FOREIGN KEY(Payment_id) REFERENCES payment(payment_id));

create table cataloging(catalog_manager_person_id varchar(20), 
category_number varchar(20), 
catalogged_date Date,
Primary key(catalog_manager_person_id),
FOREIGN KEY(catalog_manager_person_id) REFERENCES person(person_id),
FOREIGN KEY(category_number) REFERENCES category(category_number));


create table publishes(publisher_id varchar(20), 
book_id varchar(20), 
Primary key(publisher_id, book_id),
FOREIGN KEY(book_id) REFERENCES books(book_id),
FOREIGN KEY(publisher_id) REFERENCES publisher(publisher_id));

create table writes(author_id varchar(20), 
book_id varchar(20), 
Primary key(author_id, book_id),
FOREIGN KEY(book_id) REFERENCES books(book_id),
FOREIGN KEY(author_id) REFERENCES author(author_id));

create table Guest_info(guest_id varchar(20), 
guest_person_id varchar(20),
guest_name varchar(20), 
guest_address varchar(20), 
contact_info varchar(20), 
Primary key(guest_id,guest_person_id),
Foreign key(guest_id) REFERENCES guest_log(guest_id),
Foreign key(guest_person_id) REFERENCES guest_log(gold_person_id));

