Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
    }
  resources :users
  resources :notes
  get 'welcome/index'
  
  authenticated :user do
    root 'notes#index'
end

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
