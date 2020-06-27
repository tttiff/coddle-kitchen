class CreateRecipeIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_ingredients do |t|
      t.boolean :vital, default: false, null: false
      t.boolean :substitute_possible, default: false, null: false
      t.references :recipe, foreign_key: true
      t.references :ingredient, foreign_key: true
      t.references :measurement, foreign_key: true

      t.timestamps
    end
  end
end
