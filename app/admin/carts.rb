ActiveAdmin.register Cart do
  belongs_to :user

  index do
    selectable_column
    id_column
    column "제품명" do |cart|
      cart.pack.product_name
    end
    column "단가" do |cart|
      number_to_currency(cart.pack.price)
    end
    column :quantity
    column "총합" do |cart|
      number_to_currency(cart.pack.price * cart.quantity)
    end

    actions
  end
end