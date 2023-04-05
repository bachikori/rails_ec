# frozen_string_literal: true

# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def customer
    @customer = Customer.new(first_name: 'John', last_name: 'a', cart_id: 29)

    ContactMailer.send_mail(@customer)
  end
end
