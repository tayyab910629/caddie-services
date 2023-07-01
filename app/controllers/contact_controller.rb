class ContactController < ApplicationController
    def contactform
        
    end

    def submitform
        @contact_message= Contact.new(private_data)
        if @contact_message.save
            ContactMailer.admin_email(@contact_message).deliver_later
            ContactMailer.customer_email(@contact_message).deliver_later
            flash.now[:notice]="Your Message Has Been Sent"
            render :contactform
            
        end
        
    end



private
            def private_data
                {
                    full_name: params[:name],email_address: params[:email],company_name: params[:company],message_text: params[:content]
                }
            end

end
