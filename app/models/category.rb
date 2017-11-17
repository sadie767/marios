class Category < ActiveRecord::Base
  validates :wine, :presence => true

  has_many :products
end
