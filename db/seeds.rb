require 'faker'
Artist.destroy_all
Client.destroy_all
Review.destroy_all

10.times do
  Artist.create(name: Faker::Name.name, years_exp: 1 + rand(50) )
  Client.create(username: Faker::Name.name)
end

review1 = Review.create(artist_id: 2, client_id: 3, stars: 1, desc: "My tattoo faded in one year")
review1.save
