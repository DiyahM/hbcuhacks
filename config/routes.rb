Hbcuhacks::Application.routes.draw do
  get "pages/index"

  match "/atl" => redirect("http://startupsathbcus-atl.eventbrite.com/")
  match "/dc" => redirect("http://startupsathbcus-dc.eventbrite.com/")
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config
  root :to => 'pages#index'
end
