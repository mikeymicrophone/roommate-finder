ActionController::Routing::Routes.draw do |map|
  map.resources :units do |unit|
    unit.resources :rooms
  end
  map.resources :rooms
end
