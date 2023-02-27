class CreateMeals < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :description
      t.boolean :vegetarian
      t.string :category
      t.integer :price_per_person
      t.integer :max_person
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
