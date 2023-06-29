class Golfer < ActiveRecord::Migration[6.1]
  def change

    create_table :golfer do |t|
      t.string :full_name
      t.string :email_address
      t.date :play_date
      t.string :play_time
      t.integer :selected_golf
      t.string :selected_packege
      t.string :selected_payment

      t.timestamps
  end
end

end
