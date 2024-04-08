class Card < ApplicationRecord
  belongs_to :type_card
  belongs_to :inventory
end
