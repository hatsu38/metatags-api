Rails.application.routes.draw do
  namespace :api, {format: 'json'} do
    namespace :v1 do
      resource :scrape, only: [:show]
      resources :metatags, only: [:index, :show]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/health_check', to: 'health_check#index'
end
