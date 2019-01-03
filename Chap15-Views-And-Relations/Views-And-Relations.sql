CREATE VIEW BPA AS
	SELECT Book.Title AS Book, Publisher.Name AS Publisher, Author.Surname AS Author 
   FROM (Book INNER JOIN Author ON Book.AuthorID = Author.AuthorID)
       INNER JOIN Publisher ON Book.PublisherID = Publisher.PublisherID
   ORDER BY Book.Title;

CREATE VIEW WW_Books AS
	SELECT Book
	FROM BPA
	WHERE Author = 'Weinstein-Welle'
	ORDER BY Book;

SELECT BPA.book, BPA.publisher, BPA.author
	FROM BPA
	RIGHT OUTER JOIN BooksInStock ON BPA.Book = BooksInStock.Book
	WHERE "copies in stock" > 0
	ORDER BY BPA.book;

CREATE VIEW InfoPressStock AS
	SELECT SUM("copies in stock") AS "stock total"
	FROM BooksInStock
	RIGHT OUTER JOIN BPA ON BPA.Book = BooksInStock.Book
	WHERE BPA.Publisher = 'Info Press';

DROP VIEW BPA CASCADE;
