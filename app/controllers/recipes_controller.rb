class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render json: @recipes, include: :ingredients
  end

  def show
    render json: @recipe, include: :ingredients
  end

  def create
    @recipe = Recipe.new(recipe_params)
    render json: @recipe
  end

  # def update
  #   if @recipe.update(recipe_params)
  #     render json: @recipe
  #   else
  #     render json: @recipe.errors, status: :unprocessable_entity
  #   end
  # end

  # def destroy
  #   @recipe.destroy
  # end

  # private
  #   def set_recipe
  #     @recipe = Recipe.find(params[:id])
  #   end

    def recipe_params
      params.require(:recipe).permit(
                  :name,
                  :quantity,
              )
    end
end

# class Api::V1::RecipesController < ApplicationController
#     before_action :set_recipe, only: [:show, :update, :destroy]
#     skip_before_action :authorized, only: [:create]
  
#     def index
#       @recipes = Recipe.all
  
#       render json: @recipes
#     end
  
#     def show
#       render json: @recipe
#     end
  
#     def create
#       @recipe = Recipe.new(recipe_params)
  
#       if @recipe.save
#         render json: @recipe, status: :created
#       else
#         render json: @recipe.errors, status: :unprocessable_entity
#       end
#     end
  
#     def update
#       if @recipe.update(recipe_params)
#         render json: @recipe
#       else
#         render json: @recipe.errors, status: :unprocessable_entity
#       end
#     end
  
#     def destroy
#       @recipe.destroy
#     end
  
#     private
#       def set_recipe
#         @recipe = Recipe.find(params[:id])
#       end
  
#       def recipe_params
#         params.require(:recipe).permit(
#                     :user_id,
#                     :name,
#                 )
#       end
# end