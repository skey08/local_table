Rails.application.routes.draw do
  root to: 'carpenters#index'
  get '/goods', to: 'goods#index'
  resources :carpenters do
    resources :goods
  end
end
