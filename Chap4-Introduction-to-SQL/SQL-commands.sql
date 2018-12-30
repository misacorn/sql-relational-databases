-- This exercise is related to the Books database, description of which is found in the references

-- Write an SQL query that fetches the title, price and the number of pages (in that order) for each book published prior to 1995. The books are to be ordered alphabetically by their names. 

SELECT Title, Price, Pages
FROM Book
WHERE Published < '1995-01-01'
ORDER BY Title;