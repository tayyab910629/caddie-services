class VerifactionStripe < ActiveRecord::Migration[5.2]
  def change
    create_table :verifaction_stripes do |t|
      t.string :session_id
      t.timestamps
    end
  end
end
