# frozen_string_literal: true

class PromotionsController < ApplicationController
  def use
    current_cart.promotion&.update!(cart_id: nil)
    promotion = Promotion.find_by!(promo_code: params[:promo_code])
    promotion.update!(cart_id: current_cart.id)
    redirect_to cart_items_path
  end
end
