Rails.application.routes.draw do
  
resources :shots do 
  resources :comments

end


  devise_for :users, controllers: { registrations: "registrations" }
  
  
  
  get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


root "shots#index"
end
