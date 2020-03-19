Rails.application.routes.draw do
  root 'landings#index'

  post 'show/:show_id/favourite' => 'show#add_as_favourite'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
