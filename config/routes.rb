Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'recipes/index'
      post 'recipes/create'
      #get 'recipes/show'
      get '/show/:id', to: 'recipes#show'
      #get 'recipes/destroy'
      delete '/destroy/:id', to: 'recipes#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index' #any other request that doesnt match the existing routes will direct to the index action from homepage controller
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
