
# To select all of the rows from a cats table:
SELECT * FROM cats;

# To select only rows representing data meeting certain conditions:
SELECT * FROM cats WHERE name = "Maru";

###################################################

ORDER BY
# allows us to order the table rows returned by a certain SELECT statement.
# When using ORDER BY, the default is to order in ascending order.
SELECT column_name FROM table_name ORDER BY column_name ASC|DESC;
SELECT * FROM cats ORDER BY age;
# If we want to specify though, we can use ASC for "ascending" or DESC for "descending."
SELECT * FROM cats ORDER BY age DESC;

###################################################

LIMIT
# LIMIT is used to determine the number of records you want to return from a dataset.
SELECT * FROM cats ORDER BY age DESC LIMIT 1;

###################################################

BETWEEN
# being able to sort and select specific data sets is important
SELECT column_name(s) FROM table_name WHERE column_name BETWEEN value1 AND value2;
SELECT name FROM cats WHERE age BETWEEN 1 AND 3;

###################################################

NULL
# We can add data with missing values using the NULL keyword.
INSERT INTO cats (name, age, breed) VALUES (NULL, NULL, "Tabby");

COUNT
# will count the number of records that meet certain condition.
"SELECT COUNT([column name]) FROM [table name] WHERE [column name] = [value]"
SELECT COUNT(owner_id) FROM cats WHERE owner_id = 1;

###################################################

GROUP BY
# Like its name suggests, it groups your results by a given column.
SELECT breed, COUNT(breed) FROM cats GROUP BY breed;

# GROUP BY is a great function for aggregating results into different segments — you can even use it on multiple columns!
SELECT breed, owner_id, COUNT(breed) FROM cats GROUP BY breed, owner_id;
