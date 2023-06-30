ActiveAdmin.register Contact do
  menu label: 'Contact Us Messages'

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :full_name, :email_address, :company_name, :message_text
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :email_address, :company_name, :message_text]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
