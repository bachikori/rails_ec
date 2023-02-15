class ItemsController < ApplicationController
  def top
    @items = Item.all.order(id: :asc)
  end

  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])
    # p @item
    p params

    if @item.update(item_params)
      p @item
      # binding.pry
      redirect_to('/')
    else
      p "画像を更新できませんでした"
    end
  end

  def item_params
    params.require(:item).permit(:id, :name, :price, :image_name)
  end
end
