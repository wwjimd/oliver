Oliver::Application.routes.draw do
  resources :visualisations

  devise_for :users

  resources :pulse_applications

  resources :data_sources do
    resources :comments
    resources :data_sets
  end
  
  resources :platforms
  
  resources :tools

  root :to => "application#index"
end
