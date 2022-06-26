class CreateToDos < ActiveRecord::Migration[6.1]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.integer :category_id
      t.boolean :complete
      t.timestamps
    end
  end
end
