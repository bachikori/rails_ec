# frozen_string_literal: true

class PromotionsController < ApplicationController
  def use
    promotion = Promotion.find_by!(promo_code: params[:promo_code])
    current_cart.update!(promotion_id: promotion.id)
    redirect_to cart_items_path
  end
end
