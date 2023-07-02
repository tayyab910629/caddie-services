class ClaimController < ApplicationController

    def claim
      
        
        @invite=Golfer.find_by_order_number(params[:order])
        
        
        if @invite.caddie_name=="Not Assigned"
            @invite.update(caddie_name: params[:name], caddie_email: params[:email])
            
        

            @message = "Confirmed"
    
            
        else
            puts "already koi ly gya boss"
            
        end
        

        # if @invite.present?
        #     @invite.update(caddie_name: params[:name], caddie_email: params[:email])
        # end
        # redirect_to root_path
        
    end
    
end
