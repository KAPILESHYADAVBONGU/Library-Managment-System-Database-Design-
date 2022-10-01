CREATE VIEW view_1
as
SELECT first_name ,last_name,membership_enrollment_date
FROM person p
inner join membership mm on mm.member_person_id = p.person_id
where p.person_id in (select distinct borrows_person_id from borrows
where month(date_of_issue) = month(now())-2
group by borrows_person_id
having count(payment_Id) > 5
order by count(borrows_person_id) desc) ;

-- Select * from view_1

CREATE VIEW view_2
AS
SELECT TITLE,EDITION
FROM BOOKS
WHERE BOOK_ID IN (
SELECT DISTINCT BORROWS_BOOK_ID 
FROM BORROWS
WHERE YEAR(date_of_issue) = YEAR(now())-1
GROUP BY BORROWS_BOOK_ID
ORDER BY count(BORROWS_BOOK_ID) DESC ) ;

Select * from view_2 LIMIT 5;

CREATE VIEW view_3
AS
SELECT pr.publisher_name
FROM publishes P
INNER JOIN publisher PR
ON P.publisher_id = PR.publisher_id 
where P.book_id in (SELECT DISTINCT comments_book_id FROM comments
group by comments_book_id
having avg(rating_score) >= 4)
;

SELECT * FROM view_3;

-- CREATE VIEW 
CREATE  VIEW view_4 AS
SELECT concat(FIRST_NAME,LAST_NAME) AS person_name ,person_phone_no,p.person_id
FROM (SELECT borrows_person_id as Person_id, COUNT(borrows_person_id) as Count_Value
	FROM BORROWS b WHERE b.Date_of_issue > DATE(curdate() - INTERVAL 1 YEAR)
    	GROUP BY b.borrows_person_id) AS c, silver sm, membership m, PERSON p, person_phone ph
    	WHERE c.Count_Value = 7 AND
    	m.Member_person_id = c.Person_id AND
    	p.Person_id = c.Person_id AND
       	sm.Silver_person_id = c.Person_id;

select * from view_4;

CREATE VIEW view_5
AS
SELECT A.author_id,A.author_name 
FROM author A
INNER JOIN writes W on W.author_id = A.author_id
Where W.book_id in (
SELECT DISTINCT borrows_book_id FROM borrows
HAVING COUNT(borrows_book_id) > 1
ORDER BY COUNT(borrows_book_id) DESC ) ;

SELECT * from view_5










