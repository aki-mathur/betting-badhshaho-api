class Team < ApplicationRecord
  has_many :matches
  has_many :bids
  validates :name, presence: true

end
