class ReviewsController < ApplicationController
  def index
    render json: Review.all
  end

  def show
    render json: Review.find(params[:id])
  end

  def create
    review = Review.create(review_params)
    # movie points to an object if create was successfully, else movie points to false
    if review.save
      render json: review, status: :created
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def update
    review = Review.find(params[:id])
    if review.update_attributes(review_params)
      render json: review, status: :updated
    else
      render json: review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    Review.find(params[:id]).destroy
    head :ok
  end

private
  def review_params
    params.require(:review).permit(
      :title,
      :comment
      )
  end
end
