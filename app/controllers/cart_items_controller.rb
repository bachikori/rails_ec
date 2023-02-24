# frozen_string_literal: true

class CartItemsController < ApplicationController
  before_action :current_cart, { only: [:create] }

  def index
    @cart_items = current_cart.cart_items
    @sale_amount = 0
  end

  def create
    @cart_item = current_cart.cart_items.build(item_id: params[:item_id], quantity: params[:quantity] || 1)
    @cart_item.save
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = current_cart.cart_items.find_by(item_id: params[:id])
    @cart_item.destroy
    redirect_to cart_items_path
  end
end
