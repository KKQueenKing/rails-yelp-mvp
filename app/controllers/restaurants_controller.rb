class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:edit, :update, :show]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      # do something else
      render :new
    end
  end

  def show
    @reviews = @restaurant.reviews
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category, :phone_number, :id)
  end
end
