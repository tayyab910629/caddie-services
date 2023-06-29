class Caddieapplication < ActiveRecord::Migration[5.2]
  def change

    create_table :caddies do |t|
      t.string :full_name
      t.string :email
      t.string :caddying_experience
      t.string :golf_experience
      t.integer :phone_number
      t.string :comments
      t.string :gender
      t.timestamps
    end
  end
end
