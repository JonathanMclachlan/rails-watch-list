class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :boomarks
  validates :title, :overview, uniqueness: true, presence: true
end
