class CreateTypeCards < ActiveRecord::Migration[7.1]
  def change
    create_table :type_cards do |t|
      t.string :libelle

      t.timestamps
    end
  end
end
