Rails.application.routes.draw do
  get 'static_pages/contact'

  get 'static_pages/about'

  resources :champions

  root 'stats#index'

  resource :stats

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
