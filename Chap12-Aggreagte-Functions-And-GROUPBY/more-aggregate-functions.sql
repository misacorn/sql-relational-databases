SELECT AuthorID, SUM(Pages)
	FROM Book
	GROUP BY AuthorID
	ORDER BY AuthorID;

SELECT AuthorID, AVG(Price), AVG(Pages)
	FROM Book
	GROUP BY AuthorID
	ORDER BY AuthorID DESC;

SELECT AuthorID, COUNT(*)
	FROM Book
	GROUP BY AuthorID
	ORDER BY COUNT(*) DESC, AuthorID;

SELECT AuthorID
	FROM Book
	GROUP BY AuthorID
	HAVING SUM(Pages) > 200
	ORDER BY AuthorID;

SELECT Author.Surname AS "Surname", Author.Forename AS "Forename", COUNT(Book.AuthorID) AS "Books written"
	FROM Author
	LEFT OUTER JOIN Book ON Author.AuthorID = Book.AuthorID
	GROUP BY Author.Surname, Author.Forename
	ORDER BY Author.Surname;