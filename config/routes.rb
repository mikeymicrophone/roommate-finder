ActionController::Routing::Routes.draw do |map|
  map.resources :units do |unit|
    unit.resources :rooms
    unit.resources :renters
  end
  
  map.resources :rooms do |room|
    room.resources :renters
  end
  
  map.resources :renters
  
  map.resources :managers, :member => {:activate => :get}
  
  map.resources :manager_sessions
  map.login '/login', :controller => 'manager_sessions', :action => 'new'
  map.logout '/logout', :controller => 'manager_sessions', :action => 'destroy'
  map.root :controller => 'manager_sessions', :action => 'new'
end
