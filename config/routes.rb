Rails.application.routes.draw do
  devise_for :users
  get 'default/index'

  get 'default/about'

  get 'default/start_here'

  root 'default#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
