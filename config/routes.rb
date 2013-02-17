Hbcuhacks::Application.routes.draw do
  resources :events
  resources :students

  match "/about" => 'pages#about'

  match "/atl" => redirect("http://startupsathbcus-atl.eventbrite.com/")
  match "/dc" => redirect("http://startupsathbcus-dc.eventbrite.com/")
  match "/signup" => redirect("https://docs.google.com/forms/d/1RD3lDULc2ypjS_D7XS6ugQPSLmG3mzNiB7aalqO53lw/viewform")
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'pages#index'
end
