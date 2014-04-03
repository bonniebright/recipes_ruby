require 'spec_helper'

describe Recipe do
  it { should validate_presence_of :name }
  it { should validate_presence_of :recipe }
  it { should have_and_belong_to_many :tags }

  # describe 'add_keywords' do
  #   it "takes a comma separated string of words and adds them as keywords to the recipe" do
  #     recipe.add_keywords('vegan, healthy, delish')
  #     recipe.tags.first.name.should eq 'vegan'
  #   end
  #   tags = "one, two, three"
  #   recipe = Recipe.create(:name => 'burrito', :recipe => "cheese, meat, tortilla")
  #   tags.split(",").each do |tag|
  #     new_tag = Tag.create(:keyword => tag)
  #     recipe.tags << new_tag
  #   end

    # recipe.add_keywords
    # @tag.recipes.first.name.should eq "burrito"
    # recipe.tags.second.keyword.should eq "two"
  end
end
