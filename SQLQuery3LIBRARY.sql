--Library SQL--
USE master
Go

DROP DATABASE dbLibrary
Go

CREATE DATABASE dbLibrary
Go


USE dbLibrary
Go



--Creating Tables--

Create Table tbl_Publisher (Name VARCHAR(50) PRIMARY KEY NOT NULL, Address varchar(50) NULL, Phone varchar(50) NOT NULL)

Create Table tbl_Book (BookID INT PRIMARY KEY NOT NULL, Title varchar(50) NULL, PublisherName VARCHAR(50) NULL)

Create Table tbl_Book_Authors (BookID INT NOT NULL, AuthorName varchar(50) NOT NULL)

Create Table tbl_Book_Copies (BookID INT NOT NULL, BranchID INT NOT NULL, No_of_Copies INT NOT NULL)

Create Table tbl_Book_Loans (BookID INT NOT NULL, BranchID INT NULL, CardNo INT NOT NULL, DateOut DATE NULL , DueDate DATE NULL)

Create Table tbl_Library_Branch (BranchID INT PRIMARY KEY NOT NULL, BranchName varchar(50) NOT NULL, Address varchar(50) NULL)

Create Table tbl_Borrower (CardNo INT PRIMARY KEY NOT NULL, Name varchar(50) NULL, Address varchar(50) NULL,Phone varchar(30) NULL)

Go



--Table Population--

SELECT * FROM tbl_Publisher

INSERT INTO tbl_Publisher
VALUES ('Wynwood Press', '1234 New York', 756-8347),
('Bridge Pub', '323 Los Angeles', 746-6354),
('ACME', '5868 ABC Street', 746-9687),
('ABC Books', '9807 San Diego', 243-2563),
('Clayton Pub', '5635 Georigia Street', 987-8765),
('Twayne Publishers', '26478 Boston Ave', 354-1323),
('London Press', '3465 SW London, Eng.', 73736-83-374),
('Humpty Dumpty', '2356 Imagination Lane', 555-5555),
('Horror Books', '666 Elm Street', 666-6666)

GO


SELECT * FROM tbl_Book

INSERT INTO tbl_Book
VALUES (1, 'A Time to Kill', 'Wynwood Press'),
(2, 'The Lost Tribe', 'ABC Books'),
(3, 'Dianetics', 'Bridge Pub'),
(4, 'Gone with the Wind', 'Clayton Pub'),
(5, 'Now Sleeps the Crimson Petal', 'Twayne Publishers'),
(6, 'Oh! To be in England (H. E. Bates)', 'Twayne Publishers'),
(7, 'Of Mice and Men','Humpty Dumpty'),
(8, 'The Waste Land','Humpty Dumpty'),
(9, 'The Amazon River', 'ACME'),
(10, 'Alien Corn', 'ACME'),
(11, 'Harry Potter', 'London Press'),
(12, 'Battlefield Earth', 'Bridge Pub'),
(13, 'All the King''s Men', 'Humpty Dumpty'),
(14, 'It', 'Horror Books'),
(15, 'The Shinning', 'Horror Books'),
(16, 'Rocket', 'ACME'),
(17, 'In a Dry Season','Humpty Dumpty'),
(18, 'Boom', 'ACME'),
(19, 'See Spot Run', 'ABC Books'),
(20, 'Green Eggs and Ham', 'ABC Books')

GO


SELECT * FROM tbl_Book_Authors

INSERT INTO tbl_Book_Authors
VALUES (1, 'John Grisham'),
(2, 'Mark Lee'),
(3, 'L. Ron Hubbard'),
(4, 'Margaret Mitchell'),
(5, 'H.E.Bates'),
(6, 'H. E. Bates'),
(7, 'John Steinbeck'),
(8, 'T.S. Eliot'),
(9, 'M.J. Brucken'),
(10, 'Sydney Howard'),
(11, 'J.K. R.'),
(12, 'L. Ron Hubbard'),
(13, 'Robert Penn Warren'),
(14, 'Stephen King'),
(15, 'Stephen King'),
(16, 'M.J. Brucken'),
(17, 'Peter Robinson'),
(18, 'M.J. Brucken'),
(19, 'Dr. Seuss'),
(20, 'Dr. Seuss')

GO


SELECT * FROM tbl_Library_Branch

INSERT INTO tbl_Library_Branch
VALUES (001, 'Sharpstown', '4444 Main St.'),
(002, 'Central','8576 Blonde Rd.'),
(003, 'EastCoast', '34567 Towne Blvd'),
(004, 'San Diego', '7365 Road Rd.'),
(005, 'WestCoast', '937 Sunset Cliffs')
Go


SELECT * FROM tbl_Book_Copies

INSERT INTO tbl_Book_Copies
VALUES (1, 001, 10),
(2, 001, 5),
(3, 002, 15),
(4, 005, 6),
(5, 005, 9),
(6, 002, 4),
(7, 003, 3),
(8, 003, 6),
(9, 005, 9),
(10, 001, 22),
(11, 004, 15),
(12, 004, 3),
(13, 001, 6),
(14, 005, 4),
(15, 001, 11),
(16, 005, 13),
(17, 002, 2),
(18, 002, 1),
(19, 004, 6),
(20, 005, 4),
(1, 001, 10),
(2, 003, 5),
(3, 001, 15),
(4, 003, 6),
(5, 004, 9),
(6, 004, 4),
(7, 005, 3),
(8, 001, 6),
(9, 004, 9),
(10, 002, 22),
(11, 005, 15),
(12, 005, 3),
(13, 002, 6),
(14, 004, 4),
(15, 003, 11),
(16, 004, 13),
(17, 001,2),
(18, 005, 1),
(19, 004, 6),
(20, 001, 4)

Go


SELECT * FROM tbl_Book_Loans
INSERT INTO tbl_Book_Loans
VALUES (2, 1, 1, '2015-12-15', '2016-12-15'),
(4, 1, 1, '2015-12-15', '2016-12-15'),
(3, 1, 1, '2015-12-15', '2016-12-15'),
(5, 1, 1, '2015-12-15', '2016-12-15'),
(1, 1, 1, '2015-12-15', '2016-12-15'),
(2, 2, 2, '2014-11-10', '2015-11-10'),
(9, 2, 2, '2014-11-10', '2015-11-10'),
(20, 2, 2, '2014-11-10', '2015-11-10'),
(18, 2, 2, '2014-11-10', '2015-11-10'),
(2, 4, 3, '2015-08-22', '2015-08-22'),
(13, 4, 3, '2015-08-22', '2015-08-22'),
(15, 4, 3, '2015-08-22', '2015-08-22'),
(16, 4, 3, '2015-08-22', '2015-08-22'),
(7, 4, 3, '2015-08-22', '2015-08-22'),
(2, 5, 4, '2013-08-22', '2014-08-22'),
(5, 5, 4, '2013-08-22', '2014-08-22'),
(11, 5, 4, '2013-08-22', '2014-08-22'),
(12, 5, 4, '2013-08-22', '2014-08-22'),
(20, 5, 4, '2013-08-22', '2014-08-22'),
(15, 5, 4, '2013-08-22', '2014-08-22'),
(18, 5, 4, '2013-08-22', '2014-08-22'),
(3, 5, 4, '2013-08-22', '2014-08-22'),
(5, 3, 10, '2016-05-13',''),
(11, 3, 10, '2016-05-13', ''),
(17, 3, 10, '2016-05-13', ''),
(14, 3, 10, '2016-05-13', ''),
(20, 3, 10, '2016-05-13', ''),
(19, 3, 10, '2016-05-13', ''),
(13, 3, 10, '2016-05-13', ''),
(5, 3, 10, '2016-05-13', ''),
(2, 1, 9, '2015-12-15', '2016-12-15'),
(4, 1, 9, '2015-12-15', '2016-12-15'),
(3, 1, 9, '2015-12-15', '2016-12-15'),
(5, 1, 9, '2015-12-15', '2016-12-15'),
(1, 1, 9, '2015-12-15', '2016-12-15'),
(2, 2, 7, '2014-11-10', '2015-11-10'),
(9, 2, 7, '2014-11-10', '2015-11-10'),
(20, 2, 7, '2014-11-10', '2015-11-10'),
(18, 2, 7, '2014-11-10', '2015-11-10'),
(2, 4, 4, '2015-08-22', '2015-08-22'),
(13, 4, 4, '2015-08-22', '2015-08-22'),
(15, 4, 4, '2015-08-22', '2015-08-22'),
(16, 4, 4, '2015-08-22', '2015-08-22'),
(7, 4, 4, '2015-08-22', '2015-08-22'),
(2, 5, 8, '2013-08-22', '2014-08-22'),
(5, 5, 8, '2013-08-22', '2014-08-22'),
(11, 5, 8, '2013-08-22', '2014-08-22'),
(12, 5, 8, '2013-08-22', '2014-08-22'),
(20, 5, 8, '2013-08-22', '2014-08-22'),
(15, 5, 8, '2013-08-22', '2014-08-22'),
(18, 5, 8, '2013-08-22', '2014-08-22'),
(3, 5, 8, '2013-08-22', '2014-08-22'),
(5, 3, 9, '2016-05-13', '2017-05-13'),
(11, 3, 9, '2016-05-13', '2017-05-13'),
(17, 3, 9, '2016-05-13', '2017-05-13'),
(14, 3, 9, '2016-05-13', '2017-05-13'),
(20, 3, 9, '2016-05-13', '2017-05-13'),
(19, 3, 9, '2016-05-13', '2017-05-13'),
(13, 3, 9, '2016-05-13', '2017-05-13'),
(5, 3, 9, '2016-05-13', '2017-05-13')
Go


SELECT * FROM tbl_Borrower

INSERT INTO tbl_Borrower
VALUES (00001, 'Sally Perterson','5436 Farnk St.', 555-4567),
(00002, 'Mike Brucken','4149 6th Ave.', 737-6147),
(00003, 'Rocket Whitmore','2145 Beech St.', 425-7465),
(00004, 'Bill Harte','7563 Palm Ave.', 875-0987),
(00005, 'Nancy Harte','7563 Palm Ave..', 876-0987),
(00006, 'Kayla Jordan','1122 Inglewood Blvd.', 736-4725),
(00007, 'Semore Buttes','422 Joke Ln', 334-4444),
(00008, 'Helen Jones','345 Frank Rd.', 478-8264),
(00009, 'Betty White','45566 Shadow St.', ''),
(00010, 'Chris Peach','345 Longhorn Rd.', 476-0987),
(00011, 'Linda Lou', '647 Fallbrook Blvd', 767-0987)
GO




--Foreign Keys--

SELECT *
FROM tbl_Book
ALTER TABLE tbl_Book
ADD CONSTRAINT FK_tbl_Book_tbl_Publisher
FOREIGN KEY (PublisherName)
REFERENCES tbl_Publisher (Name) 
    ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO


SELECT *
FROM tbl_Book_Authors
ALTER TABLE tbl_Book_Authors  
ADD CONSTRAINT FK_tbl_Book_Authors_tbl_Book 
FOREIGN KEY (BookID)     
    REFERENCES tbl_Book (BookID)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO


SELECT *
FROM tbl_Book_Copies
ALTER TABLE tbl_Book_Copies 
ADD CONSTRAINT FK_tbl_Book
FOREIGN KEY (BookID)     
    REFERENCES tbl_Book (BookID)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO


SELECT *
FROM tbl_Book_Copies
ALTER TABLE tbl_Book_Copies 
ADD CONSTRAINT FK_tbl_Book_Copies_tbl_Library_Branch
FOREIGN KEY (BranchID)     
    REFERENCES tbl_Library_Branch (BranchID)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO


SELECT *
FROM tbl_Book_Loans
ALTER TABLE tbl_Book_Loans   
ADD CONSTRAINT FK_tbl_Book_Loans_tbl_Book FOREIGN KEY (BookID)     
    REFERENCES tbl_Book (BookID)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE        
GO 


SELECT *
FROM tbl_Book_Loans
ALTER TABLE tbl_Book_Loans 
ADD CONSTRAINT FK_tbl_Book_Loans_tbl_Library_Branch
FOREIGN KEY (BranchID)     
    REFERENCES tbl_Library_Branch (BranchID)     
    ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO


SELECT *
FROM tbl_Book_Loans
ALTER TABLE tbl_Book_Loans 
ADD CONSTRAINT FK_tbl_Book_Loans_tbl_Borrower
FOREIGN KEY (CardNo)     
    REFERENCES tbl_Borrower (CardNo)     
    	ON DELETE CASCADE    
    ON UPDATE CASCADE   
GO