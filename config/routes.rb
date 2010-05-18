ActionController::Routing::Routes.draw do |map|
  map.resources :units do |unit|
    unit.resources :rooms
    unit.resources :renters
    unit.resources :payments
  end
  
  map.resources :rooms do |room|
    room.resources :renters
    room.resources :payments
  end
  
  map.resources :renters do |renter|
    renter.resources :payments
  end
  
  map.resources :payments
  
  map.resources :months do |month|
    month.resources :payments
    month.resources :rooms
    month.resources :renters
    month.resources :units
  end
  
  map.resources :managers, :member => {:activate => :get}
  
  map.resources :manager_sessions
  map.login '/login', :controller => 'manager_sessions', :action => 'new'
  map.logout '/logout', :controller => 'manager_sessions', :action => 'destroy'
  map.root :controller => 'manager_sessions', :action => 'new'
end
