Mysecurity::Application.routes.draw do
  resources :inventario_menajes

  resources :inventario_equipamientos

  resources :tipo_de_menajes

  resources :tipo_de_equipamientos

  resources :escuelas

  resources :localidads

  resources :role_permissions

    devise_for :users, :path => 'user'

    resources :roles
    resources :users


  match 'inventario_menajes/listado_escuela/:idEscuela' => 'inventario_menajes#listado_escuela'
  
  #CRUD ELEMENTO INVENTARIO
  #Ver lista de elementos del inventario de una escuela
  match 'inventario_equipamientos/inventarios/listado_escuela/:idEscuela' => 'inventario_equipamientos#listado_escuela' 
  #Agregar un elemento (renglon_inventario_equipamiento) al inventario de una escuela
  match 'inventario_equipamientos/inventarios/agregar_elemento_inventario' => 'inventario_equipamientos#agregar_elemento_inventario'
  #match 'inventario_equipamientos/inventarios/agregar_elemento_inventario/:idEscuela/:idInventario' => 'inventario_equipamientos#agregar_elemento_inventario'
  #Quitar un elemento (renglon_inventario_equipamiento) al inventario de una escuela
  match 'inventario_equipamientos/inventarios/quitar_elemento_inventario/:idEscuela/:idInventario/:idElementoInventario' => 'inventario_equipamientos#quitar_elemento_inventario'
  #Ver un elemento (renglon_inventario_equipamiento) al inventario de una escuela
  match 'inventario_equipamientos/inventarios/ver_elemento_inventario/:idEscuela/:idInventario/:idElementoInventario' => 'inventario_equipamientos#ver_elemento_inventario'
  #Modificar un elemento (renglon_inventario_equipamiento) al inventario de una escuela
  match 'inventario_equipamientos/inventarios/modificar_elemento_inventario/:idEscuela/:idInventario/:idElementoInventario' => 'inventario_equipamientos#modificar_elemento_inventario'



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
  #
  #

  root :to => "escuelas#index"

end
