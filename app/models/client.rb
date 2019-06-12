class Client < ApplicationRecord
  has_many :reviews
  has_many :artists, through: :reviews
end
