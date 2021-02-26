Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      get '/adresses/:cep', to: 'adresses#show'
      resources :adresses
    end
  end
end

