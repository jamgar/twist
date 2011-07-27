Twist::Application.routes.draw do

  root :to => "books#index"
  resources :books do
    member do
      post :receive
    end
    
    resources :chapters
  end
  
  resources :elements do
    resources :notes
  end

  devise_for :users
end
