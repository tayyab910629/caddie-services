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

    def caddies_email(data,order)
        @kuch_b = data
        @order=order
        mail(to: @kuch_b.email, subject: 'We Received Your Message')
      end

      def golfer_order (data,order)
        @data=data
        @order=order
        mail(to:@data, subject: 'Golfer Email' )
      end

      # def test_email
      #   mail(to: 'tayyab910629@gmail.com', Subject: "this is home")

      # end






  end
