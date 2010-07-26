ActionController::Routing::Routes.draw do |map|
  
  map.resource :session
  map.resources :posts
  
  map.login '/login/:service', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  
  map.download '/download', :controller => 'posts', :action => 'download'
  
  map.oauth_callback '/oauth_callback/:service', :controller => 'sessions', :action => 'oauth_callback'
  
  map.root :controller => "posts", :action => "new"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
