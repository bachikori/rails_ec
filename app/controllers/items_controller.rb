class ItemsController < ApplicationController
  def top
  end

  def edit
    @item = Item.find(params[:id])
  end
  def update
    @item = Item.find(params[:id])

    if @item.update(item_params)
      redirect_to('/')
    end
  end

  def item_params
    params.require(:item).permit(:name, :price, :image_name)
  end
end
