class TagsController < ApplicationController


def create
  @tag = Tag.new(params[:recipe])
    if @tag.save
      redirect_to("/recipes/#{recipe.id}")
    else
      render('recipes/new.html.erb')
    end
end

  def show
    @tag = Tag.find(params[:id])
    render('recipes/show.html.erb')
  end
end
