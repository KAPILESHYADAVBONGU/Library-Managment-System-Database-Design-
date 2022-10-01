-- Query 1
SELECT library_supervisor_person_id AS ID, CONCAT(first_name,' ',last_name) as Name,employee_id,gender,dob,Address
FROM library_supervisors LS
INNER JOIN employee E ON LS.library_supervisor_person_id = E.employee_person_id
INNER JOIN person P ON LS.library_supervisor_person_id = P.person_id
WHERE MONTH(start_date) IN (MONTH(NOW())-1) OR (MONTH(NOW())-2);

SELECT * FROM PERSON WHERE PERSON_ID LIKE 'P11%';

-- Query 2
SELECT CONCAT(first_name,last_name) as Name , BO.title
FROM person P 
INNER JOIN membership M ON P.person_id = M.member_person_id
INNER JOIN borrows B ON B.borrows_person_id = P.person_id
 INNER JOIN books BO ON BO.book_id = B.borrows_book_id
WHERE M.member_person_id IN (SELECT DISTINCT employee_person_id FROM employee)
AND  MONTH(date_of_issue) = MONTH(now())-2 ;


-- Query 3
SELECT G.gold_person_id as ID,count(borrows_person_id)/count(G.gold_person_id)  AS NO_OF_BOOKS 
FROM BORROWS B INNER JOIN gold G on G.gold_person_id = B.borrows_person_id
group by borrows_person_id 
ORDER BY count(borrows_person_id)/count(G.gold_person_id) DESC
LIMIT 5;

-- Query 4
SELECT DISTINCT publisher_name , title
FROM publisher P
INNER JOIN publishes ps ON ps.publisher_id = P.publisher_id
INNER JOIN comments C ON C.comments_book_id = ps.book_id
INNER JOIN books B ON B.book_id = ps.book_id ;

-- Query 5
SELECT TITLE  FROM books B 
INNER JOIN borrows BS ON BS.borrows_book_id = B.book_id
WHERE MONTH(date_of_issue) not BETWEEN (MONTH(NOW())-1) AND (MONTH(NOW())-5);

-- Query 6
Select author_id from 
(select Distinct comments_book_id as Book_id,sum(rating_score)/count(comments_book_id) as popular 
from comments 
order by sum(rating_score)/count(comments_book_id) desc
limit 1) as derived_3
inner join writes w on w.book_id = derived_3.Book_id;

-- Query 7
Select concat(first_name,last_name) as name from 
(
Select distinct gold_person_id,count(*) from guest_log 
order by count(*) desc
limit 1) as derived_5
inner join person p on p.person_id = derived_5.gold_person_id
;

-- 8
SELECT Year FROM
(
SELECT distinct year(date_of_issue) As Year,count(*)
FROM borrows
group by date_of_issue
order by count(*) desc
) as Derived
Limit 1;

-- 9
Select concat(first_name,last_name) as name 
from borrows	
Inner join person p on p.person_id = borrows_person_id
where borrows_book_id in ( Select Book_id from 
			(select Distinct comments_book_id as Book_id,sum(rating_score)/count(comments_book_id) as popular 
			from comments 
			order by sum(rating_score)/count(comments_book_id) desc
			limit 1)
            as derived_6 ) ;

-- SELECT * FROM BORROWS WHERE BORROWS_BOOK_ID = 'B12'
-- 10
select concat(first_name,last_name) as Name , e.employee_member_id,e.employee_person_id from membership m 
inner join gold g on g.gold_person_id=m.member_person_id
inner join employee e on e.employee_member_id=m.membership_id
inner join person p on p.person_id=e.employee_person_id
where m.membership_enrollment_date-e.start_date<31;


-- 11
Select concat(first_name,last_name) As Name  from membership mm
Inner join silver s ON s.silver_person_id = mm.member_person_id
Inner join person p on p.person_id = s.silver_person_id
where year(now())-Year(mm.membership_enrollment_date)  > 5;

-- 12
SELECT person_name, Count(*) as No_of_books
FROM view_4 p, BORROWS b
	WHERE p.person_id = b.borrows_person_id 
    	GROUP BY p.person_id, b.borrows_book_id;
-- 13
Select Name from 
(
select distinct r.trainer_id,concat(first_name,last_name) as Name, count(*) 
from receptionist r
inner join trainer t on t.trainer_id=r.trainer_id
inner join person p on  p.person_id = t.trainer_person_id
) as Derive
Limit 1;

-- 14
Select name from 
(
Select distinct catalog_manager_person_id,c.category_number,concat(first_name,last_name) as name 
from cataloging ct
inner join category c on ct.category_number = c.category_number
inner join person p on p.person_id = ct.catalog_manager_person_id
where week(ct.catalogged_date) >  (week(now())-4) 
group by catalog_manager_person_id,category_number
) as derived_2;




