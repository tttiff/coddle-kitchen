class IngredientHack < ApplicationRecord
  belongs_to :hack
  belongs_to :ingredient_preservation
  belongs_to :hack_category
end
