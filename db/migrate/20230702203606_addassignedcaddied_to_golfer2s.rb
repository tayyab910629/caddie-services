class AddassignedcaddiedToGolfer2s < ActiveRecord::Migration[5.2]
  def change
    remove_column :golfers,:assigned_caddie, :string
    remove_column :golfers,:selected_payment, :string
  end
end
