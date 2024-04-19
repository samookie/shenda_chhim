# == Schema Information
#
# Table name: cards
#
#  id           :bigint           not null, primary key
#  name         :string
#  description  :string
#  type_card_id :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string
#  inventory_id :bigint           not null
#
class Card < ApplicationRecord
  belongs_to :type_card
  belongs_to :inventory
end
