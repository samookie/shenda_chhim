class ChangeColumnDescriptionInCard < ActiveRecord::Migration[7.1]
  def change
    change_column :cards, :description, :text
  end
end
