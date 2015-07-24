Rails.application.routes.draw do


  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'countries'   => 'static_pages#countries'
  resources :countries

end