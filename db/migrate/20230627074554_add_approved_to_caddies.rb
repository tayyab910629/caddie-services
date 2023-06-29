class AddApprovedToCaddies < ActiveRecord::Migration[5.2] # use your current ActiveRecord version
  def change
    add_column :caddies, :_approved, :string, default: 'no'
  end
end
