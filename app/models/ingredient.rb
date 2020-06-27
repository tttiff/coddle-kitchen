class Ingredient < ApplicationRecord

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  has_many :ingredient_preservations
  has_many :preservations, through: :ingredient_preservations
  has_many :ingredient_hacks, through: :ingredient_preservations


  accepts_nested_attributes_for :recipe_ingredients, :recipes, :ingredient_preservations, :preservations

  before_save { name.downcase! }

# cloudinary active storage image upload
  has_one_attached :image
end
