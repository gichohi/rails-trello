Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'lists/index'
      post 'lists/create'
      get '/show/:id', to: 'lists#show'
      delete '/destroy:id', to: 'lists#destroy'
    end
  end
  namespace :api do
    namespace :v1 do
      get 'cards/index'
      get 'cards/create'
      get '/show/:id', to: 'cards#show'
      delete '/destroy:id', to: 'cards#destroy'
    end
  end
  root 'homepage#index'
  get '/*path' => 'homepage#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
