class Ingredient < ApplicationRecord


  validates_uniqueness_of :name
  before_save { name.downcase! }

  has_many :ingredient_hacks
  has_many :hacks, through: :ingredient_hacks
  has_many :hack_categories,  through: :ingredient_hacks

  has_many :recipe_ingredients
  has_many :recipes, through: :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients, :recipes, :ingredient_hacks, :hacks, :hack_categories



# cloudinary active storage image upload
  has_one_attached :image
end
