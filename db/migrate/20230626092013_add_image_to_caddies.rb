class AddImageToCaddies < ActiveRecord::Migration[5.2]
  def change
    add_column :caddies, :image, :string
  end
end
