class OrderController < ApplicationController
  def create
    @order = Order.new(params.require(:order).permit(:name, :middle, :surname, :product, :count))
    @order.check = 0
    @order.save
    redirect_to root_path
  end

  def index
    @all_order = Order.all
  end

  def do_check
    @order = Order.find(params[:id])
    if @order.check == 0
      @order.check = 1
    elsif @order.check == 1
      @order.check = 0
    end
    @order.save
    redirect_to order_index_path
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to order_index_path
  end

  def delete_all
    Order.delete_all
    redirect_to order_index_path
  end
end
