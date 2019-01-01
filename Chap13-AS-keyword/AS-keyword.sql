SELECT AuthorID, SUM(Pages) AS "Pages in total"
	FROM Book
	GROUP BY AuthorID
	ORDER BY AuthorID;
	
SELECT AuthorID, SUM(Pages) AS "Pages in total", AVG(Price) AS "Book price average"
	FROM Book
	GROUP BY AuthorID
	HAVING SUM(Pages) > 200
	ORDER BY AuthorID;

SELECT AuthorID, 'has written' AS "Exp1", COUNT(Book), 'book(s)' AS "Exp2"
	FROM Book
	GROUP BY AuthorID
	ORDER BY AuthorID;

SELECT 'There are' AS "Exp1", COUNT(Book), 'books that cost more than 20' AS "Exp2"
	FROM Book
	WHERE Price > 20;

SELECT 'The new price for book' AS "Exp1", bookid AS "Book ID", 'is' AS "Exp2", (Price-5) AS "Discount price"
	FROM Book
	GROUP BY bookid
	ORDER BY bookid;