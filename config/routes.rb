Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get("flexible/square/:zebra",{:controller=>"calculations",:action=>"flexible_square"})
  get("flexible/square/root/:zebra",{:controller=>"calculations",:action=>"flexible_square_root"})
get("flexible/payment/:a/:b/:c",{:controller=>"calculations",:action=>"flexible_payment"})
get("/square/new",{:controller=>"calculations",:action=>"square_form"})
end
