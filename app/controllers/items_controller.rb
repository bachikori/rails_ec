class ItemsController < ApplicationController
  def top
    @items = Item.all
  end
end