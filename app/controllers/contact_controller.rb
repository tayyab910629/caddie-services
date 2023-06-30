class ContactController < ApplicationController
    def contactform
        
    end

    def submitform
        @contact_message= Contact.new(full_name: params[:name],email_address: params[:email],company_name: params[:company],message_text: params[:content])
        @contact_message.save
        
    end

end
