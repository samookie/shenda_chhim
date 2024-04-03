# == Schema Information
#
# Table name: notes
#
#  id         :bigint           not null, primary key
#  value      :integer
#  beer_id    :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Note < ApplicationRecord
  belongs_to :beer

  def to_s
    value
  end

end
