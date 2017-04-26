class CreateBirthdays < ActiveRecord::Migration[5.0]
  def change
    create_table :birthdays do |t|
      t.string :given_name
      t.string :family_name
      t.string :nickname
      t.date :born_on

      t.timestamps
    end
  end
end
