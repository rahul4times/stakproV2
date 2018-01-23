Rails.application.routes.draw do

  root to: 'market#gainers'
  get 'get_gainers', to: 'market#get_gainers'

  # get 'index', to: 'hello_world#index'

  # get 'index', to: 'hello_world#index'

  devise_for :users

  mount ActionCable.server => '/cable'

end
