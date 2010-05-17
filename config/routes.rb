ActionController::Routing::Routes.draw do |map|
  map.resources :units do |unit|
    unit.resources :rooms
    unit.resources :renters
  end
  
  map.resources :rooms do |room|
    room.resources :renters
  end
  
  map.resources :renters
end
