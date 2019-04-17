
# Adding a column
# Let's add a :grade column and a :birthdate column
class AddGradeandBirthdateToStudents < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :grade, :integer
    add_column :students, :birthdate, :string
  end
end
