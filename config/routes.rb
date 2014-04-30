FsmkCampWebsite::Application.routes.draw do
  resources :post
  resources :contact
  
  get '/about' => 'post#about'
  get '/contact_us' => 'post#contact'
  post '/contact_us' => 'post#create_contact'
  get '/speakers' => 'post#speakers'
  get '/technologies' => 'post#technologies'
  get '/sponsors' => 'post#sponsors'
  get '/gallery' => 'post#gallery'
  root 'post#index'
end
