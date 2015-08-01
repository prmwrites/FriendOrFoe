Rails.application.routes.draw do


  resources :relations
  root             'static_pages#home'
  get 'help'    => 'static_pages#help'
  get 'countries'   => 'static_pages#countries'
  resources :countries do
    resources :relations
  end

end