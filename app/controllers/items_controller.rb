# frozen_string_literal: true

class ItemsController < ApplicationController
  def top
    @items = Item.all
  end
end
