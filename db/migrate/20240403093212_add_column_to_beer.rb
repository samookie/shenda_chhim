class AddColumnToBeer < ActiveRecord::Migration[7.1]
  def change
    add_column :beers, :name, :text
  end
end
