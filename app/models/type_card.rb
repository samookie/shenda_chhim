# == Schema Information
#
# Table name: type_cards
#
#  id         :bigint           not null, primary key
#  libelle    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class TypeCard < ApplicationRecord
    has_many :cards
end
