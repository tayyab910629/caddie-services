class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :title
      t.integer :price
      t.text :details

      t.timestamps
    end
  end
end
