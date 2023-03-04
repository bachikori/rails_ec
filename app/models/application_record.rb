# frozen_string_literal: true

class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def total_quantity
    cart_items.sum { |hash| hash[:quantity] }
  end
end
