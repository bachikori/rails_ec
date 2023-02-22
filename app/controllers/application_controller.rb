# frozen_string_literal: true

class ApplicationController < ActionController::Base
	before_action :set_quantity

	def set_quantity
		@cart_items = CartItem.all
    @top_quantity = 0
	end
end
