Rails.application.routes.draw do
  get 'champions/index'

  get 'champions/show'

  root 'stats#index'

  get 'stats/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
