Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"
  resources :flats do
    resources :reservations, only: [:new, :create]
    collection do
      get :dashboard
    end
  end
  resources :reservations, only: [:show, :destroy]
end
