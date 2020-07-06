class HackCategory < ApplicationRecord

  has_ancestry

  validates_uniqueness_of :name
  has_many :ingredient_hacks
  has_many :hacks, through: :ingredient_hacks
  has_many :ingredients, through: :ingredient_hacks

  accepts_nested_attributes_for :hacks, :ingredients, :ingredient_hacks

end
