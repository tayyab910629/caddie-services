class Golfer < ApplicationRecord

    
#     validates :full_name,:play_date,:play_time,:selected_golf,:selected_packege,:selected_payment, presence: true
#    validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :stripe_session_id, uniqueness: true

    # t.string :full_name
    # t.string :email_address
    # t.date :play_date
    # t.string :play_time
    # t.integer :selected_golf
    # t.string :selected_packege
    # t.string :selected_payment

    
end
