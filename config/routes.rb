Rails.application.routes.draw do
  resources :appointments
  resources :guards
  resources :workers
  resources :worker_types
  resources :medical_centers
  resources :medical_center_types
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "medical_centers#index"
end
