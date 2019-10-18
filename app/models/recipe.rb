class Recipe < ApplicationRecord
  #validations for a valid recipe
  validates :name, presence: true
  validates :ingredients, presence: true
  validates :instruction, presence: true
end
