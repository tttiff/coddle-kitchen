class CreateIngredientPreservations < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredient_preservations do |t|
      t.integer :days_added, default: 0, null: false
      t.boolean :initial_state, default: false, null: false
      t.references :ingredient, foreign_key: true
      t.references :preservation, foreign_key: true

      t.timestamps
    end
  end
end
