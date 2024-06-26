class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :description
      t.references :type_card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
