# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :set_quantity

  def top
    @items = Item.all
  end

  def show
    @items_random = Item.order(Arel.sql('RANDOM()')).limit(4)
    @item = Item.find(params[:id])
    p @item.id
    # binding.pry
  end
end
