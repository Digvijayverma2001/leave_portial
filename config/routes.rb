Rails.application.routes.draw do
  devise_for :users, controllers:{ passwords: 'users/passwords',registrations: 'users/registrations',confirmations: 'users/confirmations',sessions: 'users/sessions' }
  root to: "homes#index"
  resources :leaves
  resources :user_leaves

  namespace :admin do
   resources :user
   end
end
