# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_cart
  helper_method :total_quantity

  def current_cart
    @current_cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= @current_cart.id
    @current_cart
  end

  def total_quantity
    current_cart.cart_items.sum { |hash| hash[:quantity] }
  end

  def reset_session
    session[:cart_id] = nil
  end
end
