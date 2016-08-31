Rails.application.routes.draw do
  
  get 'matchcase/prindex'
  get 'matchcase/selectpatient/:id' => 'matchcase#selectpatient'
  get 'matchcase/confirmpr'
  get 'matchcase/eval_bydr/:id' => 'matchcase#eval_bydr'
  get 'matchcase/eval_bydr_apply/:id' => 'matchcase#eval_bydr_apply'








  get 'matchcase/drindex'
  get 'matchcase/selectstdoctor/:id' => 'matchcase#selectstdoctor'
  get 'matchcase/confirmdr'


  root 'home#index'

  resources :stdoctorregists
  

  resources :patientregists
  get 'matchcase/show_eval_ofdr/:id' => "matchcase#show_eval_ofdr"
  # show_eval

  devise_for :dpatients, controllers: { registrations: 'dpatients/registrations' }
  devise_for :dstdoctors, controllers: { registrations: 'dstdoctors/registrations' }
  
  
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
