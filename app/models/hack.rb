class Hack < ApplicationRecord

  validates_uniqueness_of :title

  has_many :ingredient_hacks
  has_many :hack_categories, through: :ingredient_hacks
  has_many :ingredients,  through: :ingredient_hacks

  accepts_nested_attributes_for :ingredient_hacks, :hack_categories, :ingredients

  has_one_attached :image

end
