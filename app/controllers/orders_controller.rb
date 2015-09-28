class OrdersController < ApplicationController
  def show
    @order = Order.where(state: 'paid').find(params[:id])
  end

  def create
    @dish = Dish.find(params[:dish_id])
    order = Order.create!(dish_sku: @dish.sku, amount: @dish.price, state: 'pending')

    redirect_to new_order_payment_path(order)
  end
  def index
  end



  def new
  end



  def edit
  end

  def update
  end

  def destroy
  end
end
