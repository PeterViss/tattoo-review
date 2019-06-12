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
    @artist_name = params['review']['artist']
    @artist = Artist.find_by(name: @artist_name)
    @artist_id = @artist.id

    @client_name = params['review']['client']
    @client = Client.find_by(username: @client_name)
    @client_id = @client.id

    @review = Review.create(stars:params['review']['stars'],client_id:@client_id,artist_id:@artist_id,desc:params['review']['desc'])
    
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
    params.require(:review).permit(:stars, :desc)
  end


end
