class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = find_review
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.create(review_params)
  end

  def edit
    @review = find_review
  end

  def update
    @review = find_review
    @review.update(review_params)
    redirect_to @review
  end

  def destroy
    @review = find_review
    @review.destroy
    redirect_to reviews_path
  end

  private

  def find_review
    Review.find(params['id'])
  end

  def review_params
    params.require(:review).permit(:stars, :client_id, :artist_id)
  end


end
