class OwnersController < ApplicationController

  def index
    @shoppings = Shopping.includes(:owner).order('created_at DESC')
  end

  def new
    @shopping = Shopping.new
  end

  def create
    @shopping = Shopping.new(item_params)
    if @shopping.save
      redirect_to root_path
    else
      render :new
    end
  end


  

end
