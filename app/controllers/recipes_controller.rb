class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
    render('recipes/index.html.erb')
  end

  def new
    @recipe = Recipe.new
    render('recipes/new.html.erb')
  end

  def create
    @recipe = Recipe.create(params[:recipe])
    @tags = params[:tag][:keywords]
    @tags.split(",").each do |tag|
      new_tag = Tag.find_or_create_by({:keyword => tag})
      @recipe.tags << new_tag
    end
      if @recipe.save
      redirect_to("/recipes")
      else
        render("recipes/new.html.erb")
      end
  end

  def show
    @recipe = Recipe.find(params[:id])
    render("recipes/show.html.erb")
  end

  def edit
    @recipe = Recipe.find(params[:id])
    render("recipes/edit.html.erb")
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params[:recipe])
      redirect_to("/recipes/#{@recipe.id}")
    else
      render("recipes/edit.html.erb")
    end
  end
  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to("/recipes")
  end
end
