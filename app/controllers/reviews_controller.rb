class ReviewsController < ApplicationController

before_action :set_restaurant, only: [:create]

  def create
    @review = Review.new(review_params)

    @review.restaurant = @restaurant

    @review.save

    redirect_to restaurant_path(@restaurant)
  end

   def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end


private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

    def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end


end
