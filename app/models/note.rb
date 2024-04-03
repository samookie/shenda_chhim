class Note < ApplicationRecord
  belongs_to :beer

  def to_s
    value
  end

end
