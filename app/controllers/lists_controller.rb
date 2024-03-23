class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = Bookmark.new
  end

  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   if @restaurant.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  # end

  # private

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  # end
end
