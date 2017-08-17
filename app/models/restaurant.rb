class Restaurant < ApplicationRecord
  has_many :reviews
  CATEGORIES = ['japanese', 'vietnamese', 'mexican', 'french', 'italian']
  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :category, inclusion: {in: CATEGORIES }
end
