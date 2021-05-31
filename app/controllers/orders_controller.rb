class OrdersController < ApplicationController
  def create
    order = Order.create(user._id = current_user.id)

    carts = Cart.where(id: params[:cart_id])
    carts.each do |cart|
      order.order_items.create(pack_id: cart.pack.id, quantity: cart.quantity)
    end

    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find(params[:id])
  end
end
