class IngredientPreservation < ApplicationRecord
  belongs_to :ingredient
  belongs_to :preservation
end
