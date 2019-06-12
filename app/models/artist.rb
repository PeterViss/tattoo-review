class Artist < ApplicationRecord
  has_many :reviews
  has_many :clients, through: :reviews

  def create_review(stars, artist_id, client_id, desc)
    Review.create(stars:stars,artist_id:artist_id,client_id:client_id,desc:desc)
  end
end
