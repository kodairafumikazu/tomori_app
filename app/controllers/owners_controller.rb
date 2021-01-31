class OwnersController < ApplicationController

  def index
     @shoppings = Shopping.all
  end

  def new
     @shopping = Shopping.new
  end

  # def create
  #   @shopping = Shopping.new(shopping_params)
  #   if @shopping.save
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end


  

end
