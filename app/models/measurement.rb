class Measurement < ApplicationRecord

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  accepts_nested_attributes_for :recipes, :recipe_ingredients, :ingredients

end
