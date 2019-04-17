

# write the code to create a table with ActiveRecord. We've created a class for you called CreateStudents.
# define a method called change and use the ActiveRecord create_table method within that method to create the table.
# The table should have a :name column with a type string.

class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
    end
  end

end
