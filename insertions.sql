insert into person values("P101", "John", "M", "Smith", "M", 01/01/1999,"9284 Dallas");
insert into person values("P102", "Rock", "G", "Jim", "F", 02/01/1999,"4739 Florida");
insert into person values("P103", "Sam", "F", "Reimi", "F", 03/02/1999,"8923 Miami");
insert into person values("P104", "Amy", "K", "Johnson", "F", 17/07/1992,"2382 California");
insert into person values("P105", "Jack", "S", "Kallis", "M", 22/04/1982,"3493 ");
insert into person values("P106", "David", "L", "Miller", "M", 17/06/1989,"2382 F");
insert into person values("P107", "Sheela", "Ki", "Jawani", "F", 08/08/1988,"7588 F");
insert into person values("P108", "Carolina", "M", "Marin", "F", 06/09/1984,"9821 F");
insert into person values("P109", "Ramika", "G", "Sen", "F", 19/10/1985,"8032 F");
insert into person values("P110", "Alyssa", "L", "Perry", "F", 10/10/1979,"4047 F");
insert into person values("P111", "Mitchell", "O", "Starc", "M", 13/02/1977,"7923 F");
insert into person values("P112", "Kevin", "H", "Peitersen", "M",27/06/1980,"8290 F");
insert into person values("P113", "Tai", "Tzu", "Ying", "F", 20/06/1994,"2739 ");
insert into person values("P114", "Lee", "Zee", "Jia", "M", 29/03/1998,"3292 F");
insert into person values("P115", "Subhash", "Veda", "Nandan", "M", 25/06/1997,"2911 F");

insert into person values("P116", "Pranav", "Veda", "Nandan", "M", '2022-05-06',"2911 F");
insert into person values("P117", "Surya", "Ratan", "Nandan", "F", '1997-05-06',"2922 Las Vegas");
select * from person;




-- Person_phone table
insert into person_phone values("P101", "9898989898");
insert into person_phone values("P102", "9696969696");
insert into person_phone values("P103", "9797979797");
insert into person_phone values("P104", "9999999999");
insert into person_phone values("P105", "8686868686");

-- Employee
insert into employee values("101","p101","201",21/06/1999,"75000");
insert into employee values("102","p102","202",22/07/1998,"55000");
insert into employee values("103","p103","203",23/08/1997,"45000");
insert into employee values("104","p104","204",24/09/1996,"35000");
insert into employee values("105","p105","205",25/10/1995,"25000");
insert into employee values("107","P116","206",'2022-05-06',"100000",'1997-05-06');
insert into employee values("107","P117","207",'2022-05-06',"100000",'1997-05-06');


select * from employee;

UPDATE employee
SET start_date=04/04/2022
WHERE employee_person_id = "p109";

-- Membership
insert into membership values("P101","201",25/10/1999);
insert into membership values("P102","202",22/10/1998);
insert into membership values("P103","203",2/10/1997);
insert into membership values("P104","204",5/10/1996);
insert into membership values("P105","205",6/10/1996);

insert into membership values("P106","206",'1999-10-25');
insert into membership values("P107","207",'2022-04-22');
insert into membership values("P108","208",'2022-04-22');
insert into membership values("P109","209",'1996-10-05');
insert into membership values("P110","210",'1996-10-06');

-- Gold Table
insert into gold values("P101","G1");
insert into gold values("P102","G2");
insert into gold values("P103","G3");
insert into gold values("P104","G4");
insert into gold values("P105","G5");

-- Silver Table
insert into silver values("P106");
insert into silver values("P107");
insert into silver values("P108");
insert into silver values("P109");
insert into silver values("P110");

-- Trainer Table
insert into trainer values("001", "P101");
insert into trainer values("002", "P103");
insert into trainer values("003", "P109");
insert into trainer values("004", "P110");
insert into trainer values("005", "P111");
insert into trainer values("006", "P113");



-- Library_supervisors
Insert into library_supervisors values ("P101","001");
Insert into library_supervisors values ("P103","002");
Insert into library_supervisors values ("P109","003");

-- Catalog_Managers
Insert into Catalog_Managers values ("P110", "004");
Insert into Catalog_Managers values ("P111", "005");
Insert into Catalog_Managers values ("P113", "006");

-- Guest Log
Insert into Guest_log values("31","P101","G1");
Insert into Guest_log values("32","P102","G2");
Insert into Guest_log values("33","P102","G3");
Insert into Guest_log values("34","P104","G4");
Insert into Guest_log values("35","P103","G3");

-- Payment 
Insert into Payment values("12345","19:30:10","2000","Card");
Insert into Payment values("12346","18:32:10","100","cash");
Insert into Payment values("12347","17:30:10","750","cash");
Insert into Payment values("12348","16:30:10","400","card");
Insert into Payment values("12349","17:30:10","75","cash");
Insert into Payment values("12350","16:30:10","40","card");
Insert into Payment values("12351","17:30:10","752","cash");
Insert into Payment values("12352","16:30:10","420","card");


-- Category
Insert into Category values("Cat1");
Insert into Category values("Cat2");
Insert into Category values("Cat3");

-- Books
Insert into books values("B11","2","Database", "Cat1");
Insert into books values("B12","1","Data Structures", "Cat1");
Insert into books values("B13","5","AStats", "Cat2");
Insert into books values("B14","7","Probability", "Cat2");
Insert into books values("B15","2","Pyscology", "Cat3");
Insert into books values("B16","2","Economics", "Cat3");
Insert into books values("B17","2","Ecetronics", "Cat2");
Insert into books values("B18","2","Artificial", "Cat1");


-- Author 
Insert into author values("A1","Vikrant");
Insert into author values("A2","Sebastian");
Insert into author values("A3","Kanan");
Insert into author values("A4","Tanmay");
Insert into author values("A5","Sushant");

-- Publishers
Insert into Publisher values("P1", "Varsity");
Insert into Publisher values("P2", "Pearson");
Insert into Publisher values("P3", "McGill");
Insert into Publisher values("P4", "Kate Will");
Insert into Publisher values("P5", "Deepthi");
-- Library_Card
Insert into Library_card values("L1","P101",06/21/1999,"Gold");
Insert into Library_card values("L2","P102",07/22/2020,"Silver");
Insert into Library_card values("L3","P103",08/23/2021,"Gold");
Insert into Library_card values("L4","P104",09/24/2021,"Silver");
Insert into Library_card values("L5","P105",04/24/2021,"Silver");

-- Promotion
Insert into promotion values("XYZ","Discount 10%","L1");
Insert into promotion values("ABC","Discount 15%","L2");
Insert into promotion values("PQR","Discount 20%","L3");
Insert into promotion values("SPT","Discount 30%","L4");
Insert into promotion values("GHK","Discount 50%","L5");




-- Receptionist
Insert into Receptionist values("P101","001");
Insert into Receptionist values("P103","002");
Insert into Receptionist values("P110","004");

-- Comments
Insert into Comments values("P105","com1","5", "12:30:12","Best","B12");
Insert into Comments values("P102","com2","4","11:30:10","Good","B15");
Insert into Comments values("P103","com3","3","10:20:12","Avg","B13");

-- Borrows 
Insert into Borrows values( "367","P101", "B11", "12345", "P101", 22/04/2022, 21/05/2022);
Insert into Borrows values( "872","P106", "B13", "12346", "P104", 29/02/2022, 28/03/2022);
Insert into Borrows values( "342","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "343","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "344","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "345","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "346","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "347","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);
Insert into Borrows values( "348","P107", "B14", "12347", "P105", 17/03/2022, 16/04/2022);

Insert into Borrows values( "873","P106", "B13", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "874","P106", "B14", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "875","P106", "B15", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "876","P106", "B16", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "877","P106", "B17", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "878","P106", "B18", "12346", "P104", 29/04/2022, 28/05/2022);

Insert into Borrows values( "855","P102", "B15", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "856","P103", "B16", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "857","P104", "B17", "12346", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "858","P105", "B18", "12346", "P104", 29/04/2022, 28/05/2022);

Insert into Borrows values( "860","P102", "B15", "12349", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "861","P103", "B16", "12350", "P104", 29/04/2022, 28/05/2022);
Insert into Borrows values( "862","P104", "B17", "12351", "P104", 04/04/2022, 05/05/2022);
Insert into Borrows values( "863","P105", "B18", "12352", "P104", 04/04/2022, 05/05/2022);

Insert into Borrows values( "864","P102", "B12", "12349", "P104", '2022-04-22', '2022-03-22');
Insert into Borrows values( "865","P103", "B12", "12350", "P104", '2022-03-22', '2022-02-22');
Insert into Borrows values( "866","P104", "B12", "12351", "P104", '2022-02-22', '2022-01-22');
Insert into Borrows values( "867","P105", "B12", "12352", "P104", '2022-01-22',' 2021-12-22');
SELECT * FROM borrows;
DELETE from borrows;

-- Cataloging 
Insert into Cataloging values("P111","Cat1", 21/05/2022);
Insert into Cataloging values("P112","Cat2", 12/05/2022);
Insert into Cataloging values("P113","Cat3", 21/05/2022);

-- Publishes
Insert into Publishes values("P1","B11");
Insert into Publishes values("P2","B12");
Insert into Publishes values("P3","B13");
Insert into Publishes values("P4","B14");
Insert into Publishes values("P5","B15");

-- Writes
Insert into Writes values("A1","B11");
Insert into Writes values("A2","B12");
Insert into Writes values("A3","B13");
Insert into Writes values("A4","B14");
Insert into Writes values("A5","B15");

-- Guest_info
Insert into Guest_info values ("31", "P101", "John", "9284 Dallas", "+19384839205");
Insert into Guest_info values ("32", "P102", "Rock", "4739 Florida", "+19348028574");
Insert into Guest_info values ("35", "P103", "Sam", "8923 Miami", "+175849374830");
select * from guest_info;









