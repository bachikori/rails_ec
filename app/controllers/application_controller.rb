# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :current_cart

  def set_quantity
    @cart_items = CartItem.where(cart_id: @current_cart.id)
    @top_quantity = 0
  end

  def current_cart
    @current_cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= @current_cart.id
  end
end
