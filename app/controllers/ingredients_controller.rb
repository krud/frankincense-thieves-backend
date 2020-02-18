class IngredientsController < ApplicationController
    def index
        @ingredients = Ingredient.all
    
        render json: @ingredients
      end
    
      def show
        render json: @ingredient
      end

      def create 
        @ingredient = Ingredient.create("name": params[:name])
        render json: @ingredient
      end 
end
