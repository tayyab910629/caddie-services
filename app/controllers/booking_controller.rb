class BookingController < ApplicationController
    def index
      
        @test=params[:packege]
        if params[:packege] == "traditional_caddie"
            @selcted_packege="You Selected Traditional Caddie"
            @price=210
        elsif params[:packege] == "fore_caddie"
            @selcted_packege="You Selected Fore Caddie"
            @price=225
        elsif params[:packege] == "bagger_caddie"
            @selcted_packege="You Selected Bagger Caddie"
            @price=325

        else
            redirect_to "/pricing/"
          end
       
    end

    def purchase
      # @order_number = Time.now.to_i.to_s
      # @order = Golfer.new(golfer_params.merge(order_number: @order_number))
      # session[:order_number] = @order.order_number
    
      # if @order.save
      
        @session = Stripe::Checkout::Session.create(
          payment_method_types: ['card'],
          line_items: [{
            price_data: {
              currency: 'usd',
              product_data: {
                name: params[:full_name],
                description: params[:selected_packege]
              },
              unit_amount: params[:total_amount].to_i * 100, # use total_amount from params, convert to cents
            },
            quantity: 1,
          }],
          mode: 'payment',
          success_url: "#{root_url}/thank-you1/?session_id={CHECKOUT_SESSION_ID}&order_params=#{golfer_params}",
          cancel_url: "#{root_url}booking?package=#{params[:Packege_Selected]}",
        )
    
        # @order.update(stripe_session_id: @session.id)
        # @order.save

        VerifactionStripe.create(session_id: @session.id)

        redirect_to new_order_payment_path(@session.id)

      # else
      #   flash[:notice] = @order.errors.full_messages.to_sentence
      #   redirect_to "/booking?package=#{params[:Packege_Selected]}"
      # end
    end
    
    def payment
      # @order = Golfer.find(params[:id])
      @session_id = params[:id]

    end

    def thankyou1

      @verify=VerifactionStripe.find_by_session_id params[:session_id]

      if @verify.present?

        @order_number = Time.now.to_i.to_s
        hash = eval(params[:order_params])
        @order = Golfer.new(hash.merge(order_number: @order_number, stripe_session_id: params[:session_id]  ) )
    
        @order.save
      else
          redirect_to '/pricing'
      end


    end

    
    private

    def golfer_params
     {
      full_name: params[:full_name],email_address: params[:email],play_date: params[:selected_date],play_time: params[:tee_time],
      selected_golf: params[:golf_course],selected_packege: params[:Packege_Selected],selected_payment: params[:payment_method],
      order_number: params[:order_number],total_amount: params[:total_amount]
    }
      end

     
    





end