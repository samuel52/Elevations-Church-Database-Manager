Rails.application.routes.draw do
  devise_for :users

  resources :churches do 
  	collection {post :import}
  end

  root 'churches#index'

  get 'new_entry', to: 'churches#new_entry'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
