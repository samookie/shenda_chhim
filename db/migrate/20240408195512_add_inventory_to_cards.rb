class AddInventoryToCards < ActiveRecord::Migration[7.1]
  def change
    add_reference :cards, :inventory, null: false, foreign_key: true
  end
end
