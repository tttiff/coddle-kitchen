class Recipe < ApplicationRecord

  validates_uniqueness_of :title
  before_save { method.downcase! }

  has_many :recipe_ingredients, dependent: :destroy
  has_many :ingredients, through: :recipe_ingredients
  has_many :measurements, through: :recipe_ingredients

  accepts_nested_attributes_for :recipe_ingredients, allow_destroy: true
  accepts_nested_attributes_for :ingredients, :measurements, :recipe_ingredients


end
