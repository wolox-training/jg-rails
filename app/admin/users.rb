ActiveAdmin.register User do
  permit_params :email, :password, :password_confirmation, :first_name, :last_name
  index do
    selectable_column
    id_column
    column :first_name
    column :last_name
    column :email
    actions
  end
  form do |f|
    f.inputs do
      f.input :first_name
      f.input :last_name
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
