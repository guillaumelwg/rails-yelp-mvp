class Review < ApplicationRecord
  RATING = (0..5)
  validates :content, :rating, :presence => true
  validates :rating, :inclusion => { :in => RATING }
  validates :rating, numericality: true
  belongs_to :restaurant
end
