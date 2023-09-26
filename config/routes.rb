Rails.application.routes.draw do
  get("/", { :controller => "mathtime", :action => "square" })

  get("/square/new", { :controller => "mathtime", :action => "square" })

  get("/square/results", { :controller => "mathtime", :action => "square_results" })

  get("square_root/new", { :controller => "mathtime", :action => "square_root" })

  get("square_root/results", { :controller => "mathtime", :action => "square_root_results" })

  get("/random/new", { :controller => "mathtime", :action => "random" })

  get("/random/results", { :controller => "mathtime", :action => "random_results" })

  get("/payment/new", { :controller => "mathtime", :action => "payment" })

  get("/payment/results", { :controller => "mathtime", :action => "payment_results" })

end
