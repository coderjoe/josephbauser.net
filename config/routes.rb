ActionController::Routing::Routes.draw do |map|
  map.home 'home', :controller => 'pages', :action => 'home'
  map.root :controller => 'pages', :action => 'home'

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
