Rails.application.routes.draw do
  # Routes for the Call_shift resource:
  # CREATE
  get "/call_shifts/new", :controller => "call_shifts", :action => "new"
  post "/create_call_shift", :controller => "call_shifts", :action => "create"

  # READ
  get "/call_shifts", :controller => "call_shifts", :action => "index"
  get "/call_shifts/:id", :controller => "call_shifts", :action => "show"

  # UPDATE
  get "/call_shifts/:id/edit", :controller => "call_shifts", :action => "edit"
  post "/update_call_shift/:id", :controller => "call_shifts", :action => "update"

  # DELETE
  get "/delete_call_shift/:id", :controller => "call_shifts", :action => "destroy"
  #------------------------------

  # Routes for the Received_message resource:
  # CREATE
  get "/received_messages/new", :controller => "received_messages", :action => "new"
  post "/create_received_message", :controller => "received_messages", :action => "create"

  # READ
  get "/received_messages", :controller => "received_messages", :action => "index"
  get "/received_messages/:id", :controller => "received_messages", :action => "show"

  # UPDATE
  get "/received_messages/:id/edit", :controller => "received_messages", :action => "edit"
  post "/update_received_message/:id", :controller => "received_messages", :action => "update"

  # DELETE
  get "/delete_received_message/:id", :controller => "received_messages", :action => "destroy"
  #------------------------------

  # Routes for the Sent_message resource:
  # CREATE
  get "/sent_messages/new", :controller => "sent_messages", :action => "new"
  post "/create_sent_message", :controller => "sent_messages", :action => "create"

  # READ
  get "/sent_messages", :controller => "sent_messages", :action => "index"
  get "/sent_messages/:id", :controller => "sent_messages", :action => "show"

  # UPDATE
  get "/sent_messages/:id/edit", :controller => "sent_messages", :action => "edit"
  post "/update_sent_message/:id", :controller => "sent_messages", :action => "update"

  # DELETE
  get "/delete_sent_message/:id", :controller => "sent_messages", :action => "destroy"
  #------------------------------

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Hospital resource:
  # CREATE
  get "/hospitals/new", :controller => "hospitals", :action => "new"
  post "/create_hospital", :controller => "hospitals", :action => "create"

  # READ
  get "/hospitals", :controller => "hospitals", :action => "index"
  get "/hospitals/:id", :controller => "hospitals", :action => "show"

  # UPDATE
  get "/hospitals/:id/edit", :controller => "hospitals", :action => "edit"
  post "/update_hospital/:id", :controller => "hospitals", :action => "update"

  # DELETE
  get "/delete_hospital/:id", :controller => "hospitals", :action => "destroy"
  #------------------------------

  # Routes for the Phone resource:
  # CREATE
  get "/phones/new", :controller => "phones", :action => "new"
  post "/create_phone", :controller => "phones", :action => "create"

  # READ
  get "/phones", :controller => "phones", :action => "index"
  get "/phones/:id", :controller => "phones", :action => "show"

  # UPDATE
  get "/phones/:id/edit", :controller => "phones", :action => "edit"
  post "/update_phone/:id", :controller => "phones", :action => "update"

  # DELETE
  get "/delete_phone/:id", :controller => "phones", :action => "destroy"
  #------------------------------

  # Routes for the Site resource:
  # CREATE
  get "/sites/new", :controller => "sites", :action => "new"
  post "/create_site", :controller => "sites", :action => "create"

  # READ
  get "/sites", :controller => "sites", :action => "index"
  get "/sites/:id", :controller => "sites", :action => "show"

  # UPDATE
  get "/sites/:id/edit", :controller => "sites", :action => "edit"
  post "/update_site/:id", :controller => "sites", :action => "update"

  # DELETE
  get "/delete_site/:id", :controller => "sites", :action => "destroy"
  #------------------------------

  devise_for :professionals
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
