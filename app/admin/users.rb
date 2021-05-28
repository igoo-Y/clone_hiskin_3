ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :phone
    column :address
    column :post_code

    actions
  end

  # show
  show do
    attributes_table do
      row :id
      row :email
      row :name
      row :phone
      row :address
      row :post_code
    end
  end

  filter :email
  filter :name
  filter :phone
  filter :address
  filter :post_code
end
