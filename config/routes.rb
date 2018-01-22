Rails.application.routes.draw do

  root to: 'market#gainers'
  get 'get_gainers', to: 'market#get_gainers'

  # get '/', to: 'hello_world#index'
  devise_for :users




  mount ActionCable.server => '/cable'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
