class ShoppingsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

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

  def edit
  end

  def update
    @shopping.update(shopping_params)
    if @shopping.save
      redirect_to root_path
    else
      render :edit
    end
  end

  def destroy
    if @shopping.destroy
      redirect_to root_path
    else
      render :show
    end
  end

  

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
