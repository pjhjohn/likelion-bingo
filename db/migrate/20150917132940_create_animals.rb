class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.boolean :checked, default: false
      t.integer :count,   default: 1
      t.timestamps null: false
    end
  end
end
