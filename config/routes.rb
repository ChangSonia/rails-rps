Rails.application.routes.draw do
  get("/",{:controller => "zebra", :action => "tiger"})
  
  get("/rock",{:controller => "zebra", :action =>"giraffe"}) # :class =>"(we put it in app > controllers)", :methds=>""

  get("/paper",{:controller => "zebra", :action =>"elephant"}) # can use same controller for different actions

  get("/scissors",{:controller => "zebra", :action =>"lion"})
  
end
