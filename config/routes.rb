Rails.application.routes.draw do
  devise_for :users

  get 'default/index'
  get 'default/about'

  resources :questions
  # get 'questions/index'
  # get 'questions/create'
  # get 'questions/new'
  # get 'questions/destroy'
  # get 'questions/show'

  get 'trivia/index'
  get 'trivia/answer'
  get 'trivia/submit'

  root 'default#index'
  match '/:action(/:id)', controller: 'default', via: %i[get post]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
