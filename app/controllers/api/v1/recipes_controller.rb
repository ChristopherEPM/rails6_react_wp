class Api::V1::RecipesController < ApplicationController
  def index
    recipe = Recipe.all.order(created_at: :desc)
    render json: recipe
  end

  def create
    recipe = Recipe.create!(recipe_params)
    if recipe
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def show
    if recipe #check if a @recipe is returned by recipe method
      render json: recipe
    else
      render json: recipe.errors
    end
  end

  def destroy
    #avoids nil errors when calling, let us delete recipe only if exists
    recipe&.destroy
    render json: { message: 'Recipe deleted!' }
  end

  private
  #Strong params to prevent wrong or malicious content from getting into our database
  def recipe_params
    params.permit(:name, :image, :ingredients, :instruction)
  end

  def recipe
    @recipe ||= Recipe.find(params[:id])
  end
end
