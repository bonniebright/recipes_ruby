class CreateRecipesTags < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :recipe, :text
      t.column :star_rating, :integer
    end
    create_table :tags do |t|
      t.column :keyword, :string
    end
    create_table :recipes_tags do |t|
      t.belongs_to :recipe
      t.belongs_to :tag
    end
  end
end
