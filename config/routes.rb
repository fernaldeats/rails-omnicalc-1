Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "user_home"})
  get("/square/results", { :controller => "calc", :action => "user_square"})
  get("/square/new", { :controller => "calc", :action => "user_home"})
  get("/square_root/new", { :controller => "calc", :action => "user_sqrn"})
  get("/square_root/results", { :controller => "calc", :action => "user_sqrr"})
  get("/payment/new", { :controller => "calc", :action => "user_payn"})
  get("/payment/results", { :controller => "calc", :action => "user_payr"})
  get("/random/new", { :controller => "calc", :action => "user_randn"})
  get("/random/results", { :controller => "calc", :action => "user_randr"})
end
