class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
        t.string :full_name
        t.string :email_address
        t.string :company_name
        t.text :message_text
        t.timestamps
      

    
    end
  end
end
