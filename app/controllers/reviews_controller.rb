class ReviewsController < ApplicationController
  #displaying all reviews
  def index
    @reviews = Review.all
  end

  #showing an existing review
  def show
    @review = find_review
  end

  #writing a new review
  def new
    @review = Review.new
  end

  #creating the review
  def create
    @review = Review.create(review_params)

    redirect_to reviews_path
  end

  #editting a review
  def edit
    @review = find_review
  end

  #update a review
  def update
    @review = find_review
    @review.update(review_params)
    redirect_to @review
  end

  #deleting an existing review
  def destroy
    @review = find_review
    @review.destroy
    redirect_to reviews_path
  end

  private

  #find a certain review
  def find_review
    Review.find(params["id"])
  end

  def review_params
    params.require(:review).permit(:stars, :client_id, :artist_id, :desc)
  end


end
