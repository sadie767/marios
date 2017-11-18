Product.destroy_all
Review.destroy_all

50.times do |index|
  product = Product.create!(grape: "Pinot Gris", name: Faker::Lorem.word, cost: Faker::Number.between(10, 500), country: Faker::Lorem.word)
  5.times do |index|
    Review.create!(author: Faker::Lorem.word, content_body: Faker::Lorem.sentence(20, false, 0), rating: Faker::Number.between(0, 5), product_id: Faker::Number.between(1, 1000))
  end
  p "Created #{Review.count} reviews"
end
p "Created #{Product.count} products"
