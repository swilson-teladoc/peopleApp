Rails.application.routes.draw do
  root 'people#index'
  
  resources :people do
    resources :posts
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
