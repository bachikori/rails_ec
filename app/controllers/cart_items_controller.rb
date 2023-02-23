# frozen_string_literal: true

class CartItemsController < ApplicationController
  before_action :set_quantity
  # before_action :current_cart, {only: [:create]}

  def index
    @cart_items = CartItem.where(cart_id: @current_cart.id)
    @quantity = 0
    @sale_amount = 0
  end

  def create
    # super_current_cart
    @cart_item = CartItem.new(item_id: params[:item_id], cart_id: @current_cart.id, quantity: params[:quantity] || 1)
    @cart_item.save
    redirect_to cart_items_path
  end

  def destroy
    @cart_item = CartItem.find_by(item_id: params[:id], cart_id: @current_cart.id)
    @cart_item.destroy
    redirect_to cart_items_path
  end
end
