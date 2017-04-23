Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get("/",{:controller=>"calculations",:action=>"home_page"})
  get("flexible/square/:zebra",{:controller=>"calculations",:action=>"flexible_square"})
  get("flexible/square_root/:zebra",{:controller=>"calculations",:action=>"flexible_square_root"})
get("flexible/payment/:a/:b/:c",{:controller=>"calculations",:action=>"flexible_payment"})
get("flexible/random/:c/:d",{:controller=>"calculations",:action=>"flexible_random_number"})
get("/square/new",{:controller=>"calculations",:action=>"square_form"})
get("/square/results",{:controller=>"calculations",:action=>"square_results"})
get("/square_root/new",{:controller=>"calculations",:action=>"square_root_form"})
get("/square_root/results",{:controller=>"calculations",:action=>"square_root_results"})
get("/payment/new",{:controller=>"calculations",:action=>"payment_form"})
get("/payment/results",{:controller=>"calculations",:action=>"payment_results"})
end
