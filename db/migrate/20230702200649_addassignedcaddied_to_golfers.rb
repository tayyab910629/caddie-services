class AddassignedcaddiedToGolfers < ActiveRecord::Migration[5.2]
  def change
    add_column :golfers, :assigned_caddie, :string, default: "Not Assigned"
    add_column :golfers, :caddie_name, :string, default: "Not Assigned"
    add_column :golfers, :caddie_email, :string, default: "Not Assigned"
    
  end
end
