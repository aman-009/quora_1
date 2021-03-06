Rails.application.routes.draw do
  
  devise_for :users

  get '/'=>'home#index'

  post '/upvote_i' =>'home#upvote_i'

  post '/question'=>'home#question'

  get '/back'=>'home#back'

  post '/answer'=>'home#answer'

  get '/edit'=>'home#edit'

  post '/editt'=>'home#editt'

  post '/upvote'=>'home#upvote'

  get '/ask_question' => 'home#ask_question'
  
  get '/show'=>'home#show'

  get '/profile' => 'home#profile'

  post '/edit'=>'home#edit'

  post '/follow' => 'home#follow'
    
  post '/delete'=>'home#delete'

  # post '/signin'=>'authentication#signin'

  # post '/signup'=>'authentication#signup'

  # get '/signin'=>'authentication#signin_get'

  # get '/signup'=>'authentication#signup_get'

   post '/logout'=>'home#logout'


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
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
