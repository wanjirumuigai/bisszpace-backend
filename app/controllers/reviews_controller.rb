class ReviewsController < ApplicationController

  def index
    reviews = Review.all
    render json: {reviews: reviews}
  end
  def create
    review = Review.create!(create_params)
    render json: {review: review}, status: :created
  end

private

def create_params
  params.permit(:comment, :rating, :user_id, :space_id)
end
end
