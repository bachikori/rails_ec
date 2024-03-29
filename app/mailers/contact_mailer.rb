# frozen_string_literal: true

class ContactMailer < ApplicationMailer
  default from: 'ya.7117.goo@gmail.com'
  layout 'mailer'

  def send_mail(order, promotion)
    @order = order
    @promotion = promotion
    mail(
      to: @order.email,
      subject: 'Webサイトより購入明細が届きました'
    )
  end
end
