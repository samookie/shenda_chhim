# == Schema Information
#
# Table name: beers
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :text
#
class Beer < ApplicationRecord
    has_many :notes
    belong_to : brands
end
