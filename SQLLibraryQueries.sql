--1. How many copies of the book titled The Lost Tribe are owned by the library branch whose name is"Sharpstown"?--
 
 SELECT BK.BookID, BK.Title, BC.No_of_Copies, LB.BranchName
 FROM tbl_Book AS BK JOIN tbl_Book_Copies AS BC
 ON BK.BookID = BC.BookID
 JOIN tbl_Library_Branch AS LB
 ON LB.BranchID = BC.BranchID

 WHERE Title = 'The Lost tribe'
 AND BranchName = 'Sharpstown'


--2. How many copies of the book titled The Lost Tribe are owned by each library branch?--

 SELECT BK.BookID, BK.Title, BC.No_of_Copies, LB.BranchName
	FROM tbl_Book AS BK JOIN tbl_Book_Copies AS BC
		ON BK.BookID = BC.BookID
	 JOIN tbl_Library_Branch AS LB
		ON LB.BranchID = BC.BranchID

	WHERE Title = 'The Lost tribe'
 
--3. Retrieve the names of all borrowers who do not have any books checked out.--

	SELECT BL.CardNo, Name, DateOut, DueDate
	FROM tbl_Book_Loans AS BL JOIN tbl_Book_Copies AS BC
	ON BL.BookID = BC.BookID
		JOIN tbl_Borrower AS Br
	ON Br.CardNo = BL.CardNo
	WHERE DateOut = NULL
  
  
 --4. For each book that is loaned out from the "Sharpstown" branch and whose DueDate is today, retrieve the book title, the borrower's name, and the borrower's address.--


 SELECT *
	FROM tbl_Book AS BK JOIN tbl_Book_Copies AS BC
	ON BK.BookID = BC.BookID
	JOIN tbl_Library_Branch AS LB
	ON LB.BranchID = BC.BranchID
	JOIN tbl_Book_Loans AS BL 
	ON BL.BookID = BC.BookID
	JOIN tbl_Borrower AS Br
	ON Br.CardNo = BL.CardNo

		WHERE BranchName = 'Sharpstown'
		AND DueDate > '20161215'

--5. For each library branch, retrieve the branch name and the total number of books loaned out from that branch.--

	SELECT tbl_Library_Branch.BranchName,
	COUNT(tbl_Book_Loans.BranchID) AS Loans 
	FROM tbl_Book_Loans	LEFT JOIN tbl_Library_Branch
	ON tbl_Book_Loans.BranchID = tbl_Library_Branch.BranchID
		
	GROUP BY tbl_Library_Branch.BranchName


--6. Retrieve the names, addresses, and number of books checked out for all borrowers who have more than five books checked out.--

CREATE PROC. BorrowerAcountReport
AS

	SELECT  tbl_Borrower.Name,tbl_Borrower.Address, COUNT(tbl_Book_Loans.CardNo) AS Loans
	FROM tbl_Book_Loans LEFT JOIN tbl_Borrower
	ON tbl_Book_Loans.CardNo = tbl_Borrower.CardNo 
	
	GROUP BY tbl_Borrower.Name,tbl_Borrower.Address
	
		 
	
--7. For each book authored (or co-authored) by "Stephen King", retrieve the title and the number of copies owned by the library branch whose name is "Central"--


CREATE PROC AuthorANDCopiesANDBranch @AuthorName VARCHAR(50), @BranchName VARCHAR (50)
AS
	
	SELECT *
	FROM tbl_Book AS BK JOIN tbl_Book_Authors AS BA
	ON BK.BookID = BA.BookID
	JOIN tbl_Library_Branch AS LB
	ON LB.BranchID = BranchID
	WHERE AuthorName = @AuthorName
	AND BranchName = @BranchName			
		
		
		
		
		