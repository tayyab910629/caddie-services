class CaddieapplicationController < ApplicationController
    def apply
       
        
    end

    # def thankyou
    #   @message = flash[:notice]
     
    #   end


    def applied

         # @request_number = Time.now.to_i.to_s
       @caddie = Caddie.new(caddie_params)
       

       if @caddie.save
        flash[:notice] = "prder dsaved"
        redirect_to "/submitted"

     else
      flash[:notice] = "#{@caddie.errors.full_messages.to_sentence}"
      
      redirect_to "/caddieapplication"
       
      end
    end

    
    private
    
    def caddie_params
      {
      full_name: params[:full_name],email: params[:email],caddying_experience: params[:caddying_experience],golf_experience: params[:golf_experience],
      phone_number: params[:phone_number],comments: params[:gender],image: params[:image]
    }
    end



    end

