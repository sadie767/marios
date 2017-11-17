class Review < ActiveRecord::Base
  validates :author, :presence => true
  validates :content_body, :presence => true, :length => { :minimum => 50, :maximum => 250 }
  validates :rating, :presence => true
  validates :product_id, :presence => true

  belongs_to :product
end
