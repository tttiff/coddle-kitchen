class HackCategory < ApplicationRecord

  has_many :hacks
  has_many :hacks, through: :ingredient_hacks
end
