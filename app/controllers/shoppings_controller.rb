class ShoppingsController < ApplicationController
  before_action :move_to_index, except: :index

  def index
    @shoppings = Shopping.all
  end

  def new
    @shopping = Shopping.new
  end

  def show
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
