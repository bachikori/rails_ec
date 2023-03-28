# frozen_string_literal: true

class CustomersController < ApplicationController
  def create
    customer = current_cart.customers.build(customer_params)
    if customer.save
      current_cart.buy
      ContactMailer.send_mail(customer).deliver_now
      delete_info(customer)
      flash[:notice] = '購入ありがとうございます。'
      redirect_to root_path
    else
      flash[:error_messages] = customer.errors.full_messages
      redirect_back fallback_location: cart_items_path
    end
  end

  private

  def delete_info(customer)
    customer.delete
    current_cart.cart_items.delete_all
    reset_session
  end

  def customer_params
    params.permit(:first_name, :last_name, :email, :address, :address2, :card_name, :card_number, :card_expiration,
                  :card_cvv)
  end
end
