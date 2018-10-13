Rails.application.routes.draw do
  get 'home/welcome'
  get 'home/about'
  resources :yh_pictures
  resources :yh_articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#welcome'

end
