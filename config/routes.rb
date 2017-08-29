Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :questions do
    resources :answers, only: [:new, :create, :edit, :update, :destroy]
    resources :comments, only: [:new, :create, :edit, :update, :destroy]
    resources :votes
  end

  resources :answers do
    resources :comments
    resources :votes
  end

  root 'questions#index'

end
