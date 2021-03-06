Rails.application.routes.draw do
  #get 'item/index'

  #get 'first/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :shop
  resources :notice
  resources :review
  resources :cart
  resources :mypage
  resources :join
  resources :login 
  # You can have the root of your site routed with "root"
   root 'first#index'
  get '/check', :controller => 'join', :action => 'check'
  get '/logout', :controller => 'first', :action => 'logout'
  get '/message', :controller => 'shop', :action => 'message'
  get '/pay', :controller => 'shop', :action => 'pay'
  get '/inside', :controller => 'shop', :action => 'inside'
  get '/buy', :controller => 'shop', :action => 'buy'

  get '/cup', :controller => 'shop', :action => 'cup'
  get '/dish', :controller => 'shop', :action => 'dish'
  get '/room_deco',:controller =>'shop',:action =>'room_deco'
  get '/cleans', :controller => 'shop', :action => 'cleans'
  get '/bathroom', :controller => 'shop', :action => 'bathroom'
  get '/etc', :controller => 'shop', :action => 'etc'

  get '/shop2', :controller => 'shop', :action => 'shop2'
  get '/shop3', :controller => 'shop', :action => 'shop3'
  get '/shop4', :controller => 'shop', :action => 'shop4'

  get '/find',:controller => 'login', :action =>'find'
  get '/mypages/order',:controller => 'mypage', :action =>'order'
  get '/mypages/inform',:controller => 'mypage', :action =>'inform'
  get '/mypages/board',:controller => 'mypage', :action =>'board'
  get '/mypages/static',:controller => 'mypage', :action =>'static'
  get '/mypages/parcel',:controller => 'mypage', :action =>'parcel'
  get '/shops/search', :controller => 'shop', :action => 'search'
 
  get '/send_mail',:controller=>'login',:action=>'send_mail'
<<<<<<< HEAD
  get '/undefined',:controller=>'first',:action=>'popup'
  # Example of regular route:
=======
  get '/undefined',:controller=>'first',:action=>'popup'  
# Example of regular route:
>>>>>>> 20ddea8bc575a4e8b2ed468e7bd826e3dd69a2dc
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
