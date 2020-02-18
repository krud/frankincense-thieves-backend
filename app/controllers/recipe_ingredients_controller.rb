class RecipeIngredientsController < ApplicationController
    def index
        @recipeIngredients = RecipeIngredient.all
    
        render json: @recipeIngredients
      end
    
      def show
        render json: @recipeIngredient
      end

      def create 
        @recipeIngredients = RecipeIngredient.create("recipe_id": params[:recipe_id], "ingredient_id": params[:ingredient_id], "quantity": params[:quantity])
        render json: @recipeIngredients
      end 
end
