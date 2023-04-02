# frozen_string_literal: true

class OrdersController < ApplicationController
  def create
    @order = current_cart.build_order(order_session_params)
    # binding.pry
    @order.transaction do
      @order.save!
      current_cart.buy
      raise 'メール送信に失敗しました。' unless ContactMailer.send_mail(@order).deliver_now

      delete_info
    end
    flash[:notice] = '購入ありがとうございます。'
    redirect_to root_path
  rescue StandardError => e
    Rails.logger.debug e.message
    render 'cart_items/index', status: :unprocessable_entity
  end

  private

  def delete_info
    current_cart.destroy
    reset_session
  end

  def order_session_params
    params.require(:session).permit(:first_name, :last_name, :email, :address, :address2, :card_name, :card_number, :card_expiration,
                  :card_cvv)
  end
end
