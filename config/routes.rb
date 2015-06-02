FsmkCampWebsite::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get "/sitemap.:format", controller: "main", action: "sitemap"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  namespace :v2014 do
    resources :post, only:[:index]
    resources :contact, only:[:new, :create]
    resources :users, only:[:index, :new, :create]
    resources :articles, only:[:index, :show]
    resources :volunteers, only:[:new, :index]
    resources :feedbacks, only:[:new, :create]

    get '/feedback' => 'feedbacks#new'
    get '/volunteers_reg' => 'volunteers#new'
    get '/register' => 'users#new'
    get '/about' => 'post#about'
    get '/contact_us' => 'contact#new'
    get '/faq' => 'post#faq'
    get '/schedule' => 'post#schedule'
    get '/speakers' => 'post#speakers'
    get '/technologies' => 'post#technologies'
    get '/sponsors' => 'post#sponsors'
    get '/gallery' => 'post#gallery'
    get '/venue' => 'post#venue'
    get '/scholarship' => 'post#scholarship'
    get '/events' => 'post#events'
    get "/" => 'post#index'
  end

  namespace :v2015 do
    resources :post, only:[:index]
    resources :contact, only:[:new, :create]
    resources :users, only:[:index, :new, :create]
    resources :articles, only:[:index, :show]
    resources :volunteers, only:[:new, :index]
    resources :feedbacks, only:[:new, :create]

    get '/feedback' => 'feedbacks#new'
    get '/volunteers_reg' => 'volunteers#new'
    get '/register' => 'users#new'
    get '/about' => 'post#about'
    get '/contact_us' => 'contact#new'
    get '/faq' => 'post#faq'
    get '/schedule' => 'post#schedule'
    get '/speakers' => 'post#speakers'
    get '/technologies' => 'post#technologies'
    get '/sponsors' => 'post#sponsors'
    get '/gallery' => 'post#gallery'
    get '/venue' => 'post#venue'
    get '/scholarship' => 'post#scholarship'
    get '/events' => 'post#events'
    get "/" => 'post#index'
  end
  root 'v2015/post#index'
end
