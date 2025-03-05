class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id]) # return restaurant based on id
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
     # localhost:3000/restaurant/11
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
     # localhost:3000/restaurant/11
  end

  def destroy
    @restaurant = restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path(@restaurant), status: :see_other
     # localhost:3000/restaurants
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
