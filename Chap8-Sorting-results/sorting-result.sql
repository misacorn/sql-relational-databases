SELECT * FROM Publisher
	ORDER BY name;

SELECT Price, Title from Book
	ORDER BY price DESC;

SELECT Price, Title from Book
	WHERE price > 30
	ORDER BY price DESC;

SELECT DISTINCT authorID from Book;

-- Books that share the same AuthorID value should be ordered by their title alphabetically. 
SELECT AuthorID , Title from Book
	ORDER BY Authorid, Title;
  
SELECT COUNT(*) FROM Author;

SELECT COUNT(*) 
   FROM Book
   WHERE authorid = 204 AND Pages > 300;