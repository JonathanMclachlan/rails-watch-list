class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :lists, through: :boomarks
end
