Rails.application.routes.draw do
  resources :gardens do
    resources :plants, only: [ :create, :new, :index  ] #collection
  end

  resources :plants, only: [ :destroy ] #member
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
