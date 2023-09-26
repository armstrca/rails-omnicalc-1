Rails.application.routes.draw do
  get("/square", { :controller => "mathtime", :action => "square" })

  get("square_root", { :controller => "mathtime", :action => "square_root" })

  get("/random", { :controller => "mathtime", :action => "random" })

  get("/", { :controller => "mathtime", :action => "square" })

end
