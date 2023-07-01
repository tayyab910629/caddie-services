class ContactMailer < ApplicationMailer
    default from: 'testing@meetchain.com'
    
    def admin_email(contact_tayyab)
      @tayyab = contact_tayyab
      mail(to: 'tayyab910629@gmail.com', subject: 'New Contact Form Submission')
    end
  
    def customer_email(contact_tayyab)
        @tayyab = contact_tayyab
      mail(to: @tayyab.email_address, subject: 'We Received Your Message')
    end

    def caddies_email(data)
        @kuch_b = data
        mail(to: @kuch_b.email, subject: 'We Received Your Message')
      end






  end
