Rails.application.routes.draw do
 
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/welcome", to: "welcome#home"
  root 'welcome#home'
  get "/submitted", to: "welcome#submitted"
  get "/about", to: "welcome#about"
  get "/booking", to: "booking#index"
  get "/becomecaddie", to: "welcome#joincaddie"
  get "/ourcaddies", to: "ourcaddies#caddieslist"
  get "/pricing", to: "pricing#pricing"
  get "/contact" , to: "contact#contactform"
  post "/submit_form" , to: "contact#submitform"
  get '/welcome/home', to: 'welcome#home', as: 'welcome_home'

 
  post '/purchase' , to: "booking#purchase"
  get '/thank-you1', to: 'booking#thankyou1'
  get '/caddieapplication', to: 'caddieapplication#apply'
  post '/caddieapplied' , to: "caddieapplication#applied"

  get 'order/:id/payment', to: 'booking#payment', as: 'new_order_payment'
  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end








  #resource can define 6 or 7 types of routes such as index, show, edit, destory, 

  # resources :users, only: [:index, :destroy, :update], controller: 'user', defaults: { format: 'js' }

  # resources :users do
  #   collection do
  #     get  :user_directory
  #     get  :get_agency_user_data
  #     post :email_subscription
  #     get  :filter_broker_ids
  #     post :set_navbar_lock
  #     post :add_task_team

end


