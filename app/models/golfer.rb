class Golfer < ApplicationRecord

    
#     validates :full_name,:play_date,:play_time,:selected_golf,:selected_packege,:selected_payment, presence: true
#    validates :email_address, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :stripe_session_id, uniqueness: true

    after_save :When_job_done_custom_function
    after_update :When_job_done_custom_function
    after_create :When_job_done_custom_function



def When_job_done_custom_function
    #Call back working with .create, .update , .save whenever we work in controller
    #Call back wont with with Update Columns, 
 
end

   

    
end
