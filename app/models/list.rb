class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true, allow_blank: false
  validates :name, presence: true, allow_blank: false 
end
