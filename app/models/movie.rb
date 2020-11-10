class Movie < ApplicationRecord
  validates :title, length: { minimum: 2 }
  validates :year, numericality: { only_integers: true }

  has_many :actors
end
