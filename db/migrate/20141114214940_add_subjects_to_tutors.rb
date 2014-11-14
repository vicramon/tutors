class AddSubjectsToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :subjects, :string, array: true
  end
end
