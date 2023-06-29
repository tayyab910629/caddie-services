class UserController < ApplicationController
    def index
      @user_all = User.all
      @test = params[:id]

    end
  
    def destroy
     
      @user = User.find(params[:id])
      @user.destroy
      
      flash[:notice] = "User successfully created."
      redirect_to users_path, notice: "User deleted successfully."
      
    end

   def update

    @user=User.find(params[:id])
    # @user.update_columns(name: params[:name])
    @user.name=params[:name]
    
   
    if @user.save
      flash[:notice]= "Updated."
      
      
    else
      flash[:notice]= "User No Update."
    end
    
    redirect_to users_path, notice: "#{@user.errors.full_messages.to_sentence}"
    

   end

  end