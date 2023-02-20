# frozen_string_literal: true

class ItemsController < ApplicationController
  def top
    @items = Item.all
  end

  def show
    @items_random = Item.order(Arel.sql('RANDOM()')).limit(4)
    @item = Item.find(params[:id])
  end
end
