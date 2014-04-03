Recipes::Application.routes.draw do
  match('/', {via: :get, to: 'recipes#index'})
  match('recipes', {:via => :get, :to => 'recipes#index'})
  match('recipes/new', {:via => :get, :to => 'recipes#new'})
  match('recipes', {:via => :post, :to => 'recipes#create'})
  match('recipes/:id', {:via => :get, :to => 'recipes#show'})
  match('recipes/edit/:id', {:via => :get, :to => 'recipes#edit'})
  match('recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
  match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})

  # # match('tags', {:via => :get, :to => 'recipes#index'})
  # match('tags', {:via => :post, :to => 'rec#create'})
  match('tags/:id', {:via => :get, :to => 'tags#show'})
end
