class Inventory < ApplicationRecord
  belongs_to :player
  has_many :cards
end
