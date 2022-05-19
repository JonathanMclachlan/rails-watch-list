class List < ApplicationRecord
  has_many :bookmarks
  has_many :movies, through: :boomarks
end
