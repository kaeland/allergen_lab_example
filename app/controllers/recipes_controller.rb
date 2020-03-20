class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all 
    render :index 
  end

  def new
    @recipe = Recipe.new 
    render :new 
  end

  def create
    # :ingredient_ids is passed as a parameter in the create in order to associate
    # an ingredient with the recipe we our going to create. Please try this out!
    
    # Use a byebug to check "recipe_params" and verify comment above: 
    # byebug
    @recipe = Recipe.create(recipe_params)
    if @recipe.valid? 
      redirect_to recipes_path
    else 
      render :new 
    end 
  end

  def show 
    @recipe = Recipe.find(params[:id]) 
    render :show 
  end

  private 

  # Adding the :ingredient_ids param allows us to receive ingredients associated 
  # to the recipe we created using the form in our new.html.erb view. 
  def recipe_params 
    params.require(:recipe).permit(:title, :user_id, :ingredient_ids)
  end
end
