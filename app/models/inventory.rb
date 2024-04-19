# == Schema Information
#
# Table name: inventories
#
#  id         :bigint           not null, primary key
#  player_id  :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Inventory < ApplicationRecord
  belongs_to :player
  has_many :cards
end
