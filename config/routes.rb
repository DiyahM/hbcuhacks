Hbcuhacks::Application.routes.draw do
  get "pages/index"

  match "/atl" => redirect("http://startupsathbcus-atl.eventbrite.com/")
  match "/dc" => redirect("http://startupsathbcus-dc.eventbrite.com/")
  match "/sign_up" => redirect("https://docs.google.com/forms/d/1RD3lDULc2ypjS_D7XS6ugQPSLmG3mzNiB7aalqO53lw/viewform")
  
  root :to => 'pages#index'
end
