class Review < ActiveRecord::Base
  validates :author, :presence => true
  validates :content_body, :presence => true
  validates :rating, :presence => true
  validates :product_id, :presence => true

  belongs_to :product
end
