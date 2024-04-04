class Brand < ApplicationRecord
    has_many :beers
    has_many :notes, through: :beers
end
