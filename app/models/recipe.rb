class Recipe < ApplicationRecord
    has_many :recipeIngredients, dependent: :destroy
    has_many :ingredients, through: :recipeIngredients
end
