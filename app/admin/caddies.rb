ActiveAdmin.register Caddie do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :_approved,:full_name, :email, :caddying_experience, :golf_experience, :phone_number, :comments, :gender, :image
  #
  # or
  #
  # permit_params do
  #   permitted = [:full_name, :email, :caddying_experience, :golf_experience, :phone_number, :comments, :gender, :image]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
  form(html: { multipart: true }) do |f|
    f.semantic_errors
    f.inputs do
      f.input :_approved
      f.input :full_name
      f.input :email
      f.input :caddying_experience
      f.input :golf_experience
      f.input :phone_number
      f.input :comments
      f.input :gender, as: :select, collection: ['Male', 'Female', 'Other'] # assuming gender is a string, change as per your implementation
      f.input :image, as: :file, hint: f.object.image.attached? ? image_tag(url_for(f.object.image)) : content_tag(:span, "No image yet")
    end
    f.actions
  end

  show do |caddie|
    attributes_table do
      row :_approved
      row :full_name
      row :email
      row :caddying_experience
      row :golf_experience
      row :phone_number
      row :comments
      row :gender
      row :image do
        if caddie.image.attached?
          image_tag url_for(caddie.image)
        else
          content_tag(:span, "No image yet")
        end
      end
    end
    active_admin_comments
  end
end