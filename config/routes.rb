Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :pictures do
    member do
      put "like" => "pictures#like"
  # get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
