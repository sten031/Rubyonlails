Rails.application.routes.draw do
  root:to => 'homes#top'
  get 'home/about' => 'homes#about'
  devise_for :users
  resources :books , only: [:create, :index, :show, :edit, :update , :destroy]
  resources :users  , only: [:show, :edit, :update,:edit ,:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
