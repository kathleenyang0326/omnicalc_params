Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/",{:controller=>"calculations",:action=>"home_page"})
  get("flexible/square/:zebra",{:controller=>"calculations",:action=>"flexible_square"})
  get("flexible/square_root/:zebra",{:controller=>"calculations",:action=>"flexible_square_root"})
get("flexible/payment/:a/:b/:c",{:controller=>"calculations",:action=>"flexible_payment"})
get("/square/new",{:controller=>"calculations",:action=>"square_form"})
end
