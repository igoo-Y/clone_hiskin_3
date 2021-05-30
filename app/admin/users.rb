ActiveAdmin.register User do

  index do
    selectable_column
    id_column
    column :email
    column :name
    column :phone
    column :address
    column :post_code
    column "장바구니 유무" do |user|
      user.carts.present?
    end

    actions do |user|
      a "장바구니 보기", href: "/admin/users/#{user.id}/carts"
    end
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
