class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :cooking_time
      t.string :difficulty_level
      t.integer :food_type_id, index: true, foreign_key: true
      t.integer :food_preference_id, index: true, foreign_key: true
      t.integer :cuisine_id, index: true, foreign_key: true
      t.text :ingredients
      t.text :procedure

      t.timestamps
    end
  end
end
