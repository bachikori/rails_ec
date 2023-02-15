# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_action :set_all_items

    def set_all_items
        # @items = Item.all.order(id: "ASC")
        # @items = Item.all
    end
end
