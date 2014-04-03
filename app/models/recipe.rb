class Recipe < ActiveRecord::Base
  has_and_belongs_to_many  :tags
  validates :name, :presence => true
  validates :recipe, :presence => true

  # def add_keywords(keywords)
  #   @recipe = Recipe.find(:id)
  #   tags = params[:keywords]
  #   tags.split(",").each do |tag|
  #     new_tag = Tag.find_or_create_by({:keyword => tag})
  #     recipe.tags << new_tag
  #   end
  # end
end
