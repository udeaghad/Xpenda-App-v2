Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "homes#index"

  resources :categories, only: [:index, :new, :create, :edit, :update, :destroy] do
    resources :category_expenditures, only: [:index]
  end

  resources :expenditures, only: [:index, :new, :create, :destroy] 
end
