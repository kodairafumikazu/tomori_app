class ItemsController < ApplicationController
  def index
    #@items = Item.all
  end

  def new
    #@item = Item.all
  end

  def create
    #Item.create(item_params)
  end

  private
  def item_params
    #params.require(:item).permit(:name, :iamge, :text)
  end

end
