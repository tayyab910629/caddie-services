class AddTotalAmountToGolfers < ActiveRecord::Migration[5.2]
  def change
    add_column :golfers, :total_amount, :decimal
  end
end
