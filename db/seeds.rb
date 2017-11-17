Product.destroy_all
Review.destroy_all

50.times do |index|
  Product.create!(name: Faker::Lovecraft.unique.word, cost: Faker::Number.between(10, 500), country: Faker::Witcher.location)
end

5.times do |index|
  Review.create!(author: Faker::TwinPeaks.unique.character, content_body: Faker::Lorem.sentence(20, false, 0).chop, rating: Faker::Number.between(0, 5), product_id: Faker::Number)
end
