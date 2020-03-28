Rails.application.routes.draw do

  devise_for :users
  root to: "topics#index"
  resources :topics, only:[:show, :create]
end
