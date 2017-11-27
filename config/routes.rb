Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	resources :surveys
	root 'surveys#index'
	get '/thank', to: "surveys#thank"
end
