
# INNER JOIN
# - An INNER JOIN query will return all the rows from both tables you are querying where a certain condition is met.
# - INNER JOIN will select all rows from both tables as long as there is a match between the specified columns of each table.
SELECT column_name(s)
FROM first_table
INNER JOIN second_table
ON first_table.column_name = second_table.column_name;

SELECT Cats.name, Cats.breed, Owners.name
FROM Cats
INNER JOIN Owners
ON Cats.owner_id = Owners.id;

# LEFT OUTER JOIN
# - returns all rows from the left, or first, table, regardless of whether or not they met the JOIN condition.
# - The query will also return the matched data from the right, or second, table.
SELECT column_name(s)
FROM first_table
LEFT JOIN second_table
ON first_table.column_name=second_table.column_name;

SELECT Cats.name, Cats.breed, Owners.name
FROM Cats
LEFT OUTER JOIN Owners
ON Cats.owner_id = Owners.id;

# RIGHT OUTER JOIN
# - The RIGHT OUTER JOIN is the reverse of the LEFT OUTER JOIN.
# - It will return all data from the right, or second, table and the matched data from the left, or first table.

SELECT column_name(s)
FROM first_table
RIGHT JOIN second_table
ON first_table.column_name = second_table.column_name;

SELECT Cats.name, Cats.breed, Owners.name
FROM Cats
RIGHT OUTER JOIN Owners
ON Cats.owner_id = Owners.id;

# FULL OUTER JOIN
# - FULL OUTER JOIN queries will combine the result of both a LEFT and RIGHT OUTER JOIN.

SELECT column_name(s)
FROM first_table
FULL OUTER JOIN second_table
ON first_table.column_name = second_table.column_name;

SELECT Cats.name, Cats.breed, Owners.name
FROM Cats
FULL OUTER JOIN Owners
ON Cats.owner_id = Owners.id;
