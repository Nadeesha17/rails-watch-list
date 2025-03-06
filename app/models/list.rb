class List < ApplicationRecord
    has_many :bookmarks, dependent: :destroy
    has_one_attached :image
    has_many :movies, through: :bookmarks
    validates :name, uniqueness: true

end
