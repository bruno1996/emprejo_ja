Rails.application.routes.draw do
  root to: 'jobs#index'
  resources :companies, only:[:show,:new,:create]
  resources :jobs, only:[:show,:new,:create,:edit,:update]
  resources :categories, only:[:show,:new,:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
