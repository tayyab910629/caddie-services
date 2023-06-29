class AddOrderNumberToGolfers < ActiveRecord::Migration[5.2]
  def change
    add_column :golfers, :order_number, :string
  end
end
