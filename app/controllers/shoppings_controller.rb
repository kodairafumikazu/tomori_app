class ShoppingsController < ApplicationController
  before_action :move_to_index, except: :index
  #before_action :set_shopping, only: [:show, :edit, :update, :destroy]


  def index
    @shoppings = Shopping.all
  end

  def new
    @shopping = Shopping.new
  end

  def create
    @shopping = Shopping.new(shopping_params)
    if @shopping.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end

  private

  def shopping_params
    params.require(:shopping).permit(:image, :product_name, :price)#.merge(owner_id: current_owner.id)
  end

  # def set_shopping
  #   @shopping = Shopping.find(params[:id])
  # end

   def move_to_index
     redirect_to action: :index unless user_signed_in? || owner_signed_in?
   end
end
