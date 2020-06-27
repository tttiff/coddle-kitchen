class CreateIngredientHacks < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_hacks do |t|
      t.references :hack, foreign_key: true
      t.references :ingredient_preservation, foreign_key: true
      t.references :hack_category, foreign_key: true

      t.timestamps
    end
  end
end
