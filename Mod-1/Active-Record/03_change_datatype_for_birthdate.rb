
# While building this, you realize you accidentally stored your birthdate data as a string. It would be much easier to work with if the column type was datetime instead. Let's fix that.

class ChangeDatatypeForBirthdate < ActiveRecord::Migration[5.1]
  def change
    change_column :students, :birthdate, :datetime
  end
end
