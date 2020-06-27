class Hack < ApplicationRecord

  has_many :ingredient_hacks, dependent: :destroy
  has_many :hack_categories

  has_many :hack_categories, through: :ingredient_hacks
  has_many :ingredient_preservations, through: :ingredient_hacks

end
