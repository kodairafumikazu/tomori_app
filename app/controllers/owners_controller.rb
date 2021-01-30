class OwnersController < ApplicationController

  def index
    #@shoppings = Item.includes(:user).order('created_at DESC')
  end

  def new
    @shopping = Shopping.new
  end

  def create
    # @item = Item.new(item_params)
    # if @item.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end


  

end
