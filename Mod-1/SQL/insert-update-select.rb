
INSERT INTO cats (name, age, breed) VALUES ('Maru', 3, 'Scottish Fold');

# We use the INSERT INTO command, followed by the name of the table to which we want to add data.
# - Then, in parentheses, we put the column names that we will be filling with data. This is followed by the VALUES keyword, which is accompanied by a parentheses enclosed list of the values that correspond to each column name.

# A basic SELECT statement works like this:
SELECT [names of columns we are going to select] FROM [table we are selecting from];
# We specify the names of the columns we want to SELECT and then tell SQL the table we want to select them FROM.

#  The * selector means: "Give me all the data from all the columns for all of the cats" Using the wildcard, we can SELECT all the data from all of the columns in the cats table like this:

# Selecting Based on Conditions: The WHERE Clause
SELECT * FROM [table name] WHERE [column name] = [some value];
SELECT * FROM cats WHERE name = "Maru";

# We can also use comparison operators, like < or > to select specific data. Let's give it a shot. Use the following statement to select the young cats:
SELECT * FROM cats WHERE age < 2;

# A boilerplate UPDATE statement looks like this:
UPDATE [table name] SET [column name] = [new value] WHERE [column name] = [value];
# The UPDATE statement uses a WHERE clause to grab the row you want to update. It identifies the table name you are looking in and resets the data in a particular column to a new value.
UPDATE cats SET name = "Hana" WHERE name = "Hannah";

# To delete table rows, we use the DELETE keyword.
DELETE FROM [table name] WHERE [column name] = [value];
DELETE FROM cats WHERE id = 2;
