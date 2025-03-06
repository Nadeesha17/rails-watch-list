class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :movie, presence: true
  validates :list, presence: true
  validates :comment, length: { minimum: 3 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
