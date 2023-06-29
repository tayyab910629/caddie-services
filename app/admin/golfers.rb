ActiveAdmin.register Golfer do
  menu label: 'Orders'

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :email_address, :play_date, :play_time, :selected_golf, :selected_packege, :selected_payment, :order_number
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :email_address, :play_date, :play_time, :selected_golf, :selected_packege, :selected_payment, :order_number]
  #   permitted << :other if params[:action] == 'create' && current_admin_user.admin?
  #   permitted
  # end
  
  
end
