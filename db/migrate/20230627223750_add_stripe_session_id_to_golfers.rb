class AddStripeSessionIdToGolfers < ActiveRecord::Migration[5.2]
  def change
    add_column :golfers, :stripe_session_id, :string
  end
end
