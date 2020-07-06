class IngredientHack < ApplicationRecord

  belongs_to :ingredient
  belongs_to :hack, optional: true
  belongs_to :hack_category


end
