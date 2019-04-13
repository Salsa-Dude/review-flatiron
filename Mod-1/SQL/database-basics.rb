
CREATE TABLE cats (
  id INTEGER PRIMARY KEY,
  name TEXT,
  age INTEGER
);

# Let's say we want to add a new column, breed, to our cats table.
 ALTER TABLE cats ADD COLUMN breed TEXT

# Use the CREATE TABLE command to create a new table called "cats"
# include a list of column names along with the type of data they will be storing.
# - TEXT means we'll be storing plain old text,
# - INTEGER means we'll store a number.
# Every table we create, regardless of the other column names and data types, should be defined with an id INTEGER PRIMARY KEY column, including data type and primary key designation.
# Our SQLite database tables must be indexed by a number. We want each row in our table to have a number, which we'll call "id", just like in an Excel spreadsheet.
# Numbering our table rows makes our data that much easier to access, update, and organize.
# SQLite comes with a data type designation called "Primary Key".
