SELECT Title AS "Book", Name AS "Publisher"
	FROM Book
	INNER JOIN Publisher ON Book.PublisherID = Publisher.PublisherID
	ORDER BY Title;

SELECT Book.Title AS "Book", Publisher.Name AS "Publisher", Author.Surname AS "Author"
	FROM (Book INNER JOIN Publisher ON Book.PublisherID = Publisher.PublisherID)
	INNER JOIN Author ON Book.AuthorID = Author.AuthorID
	ORDER BY Book.Title;

SELECT Book.Title AS "Book", instock AS "copies in stock"
	FROM Stock
	LEFT OUTER JOIN Book ON Stock.BookID = Book.BookID
	WHERE instock > 0
	ORDER BY instock DESC, Book.Title;

SELECT Book.Title AS "Book", Book.Price AS "Price", Book.Pages AS "Pages", Author.Surname AS "Author"
	FROM (Book INNER JOIN Publisher ON Book.PublisherID = Publisher.PublisherID)
	LEFT OUTER JOIN Author ON Author.AuthorID = Book.AuthorID
	WHERE Publisher.Name = 'Taylor & Wells' OR Publisher.name = 'Classics4you'
	ORDER BY Book.Title;