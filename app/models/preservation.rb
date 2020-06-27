class Preservation < ApplicationRecord

  has_many :ingredient_preservations, dependent: :destroy
  has_many :ingredients, through: :ingredient_preservations

  accepts_nested_attributes_for :ingredients, :ingredient_preservations

  before_save { method.downcase! }

end
