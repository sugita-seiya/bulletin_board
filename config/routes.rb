Rails.application.routes.draw do

  devise_for :users
  root to: "topics#index"
  resources :topics, only:[:show, :create] do
    collection do
      get 'search'
    end
    resources :posts, only:[:show,:create] do
    end
  end
end
