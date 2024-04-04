class AddBrandToBeer < ActiveRecord::Migration[7.1]
  def change
    add_reference :beers, :brand, null: true, foreign_key: true
  end
end
