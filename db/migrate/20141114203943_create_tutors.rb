class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :address
      t.string :zipcode
      t.string :email
      t.text :bio
      t.string :graduation_year
      t.timestamps
    end
  end
end
