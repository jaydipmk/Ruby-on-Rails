# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                     login GET    /login(.:format)                                                                         sessions#new
#                           POST   /login(.:format)                                                                         sessions#LoginCreate
#                    logout DELETE /logout(.:format)                                                                        sessions#destroy
#                      help GET    /help(.:format)                                                                          static_pages#help
#                     about GET    /about(.:format)                                                                         static_pages#about
#                   contact GET    /contact(.:format)                                                                       static_pages#contact
#                department GET    /department(.:format)                                                                    static_pages#department
#                   address GET    /address(.:format)                                                                       emp_details#address
#               emp_details GET    /emp_details(.:format)                                                                   emp_details#index
#                           POST   /emp_details(.:format)                                                                   emp_details#create
#            new_emp_detail GET    /emp_details/new(.:format)                                                               emp_details#new
#           edit_emp_detail GET    /emp_details/:id/edit(.:format)                                                          emp_details#edit
#                emp_detail GET    /emp_details/:id(.:format)                                                               emp_details#show
#                           PATCH  /emp_details/:id(.:format)                                                               emp_details#update
#                           PUT    /emp_details/:id(.:format)                                                               emp_details#update
#                           DELETE /emp_details/:id(.:format)                                                               emp_details#destroy
#        login_master_index GET    /login_master(.:format)                                                                  login_master#index
#                           POST   /login_master(.:format)                                                                  login_master#create
#          new_login_master GET    /login_master/new(.:format)                                                              login_master#new
#         edit_login_master GET    /login_master/:id/edit(.:format)                                                         login_master#edit
#              login_master GET    /login_master/:id(.:format)                                                              login_master#show
#                           PATCH  /login_master/:id(.:format)                                                              login_master#update
#                           PUT    /login_master/:id(.:format)                                                              login_master#update
#                           DELETE /login_master/:id(.:format)                                                              login_master#destroy
#                           GET    /auth/:provider/callback(.:format)                                                       sessions#create
#              auth_failure GET    /auth/failure(.:format)                                                                  redirect(301, /)
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  #resources :sessions
  get   '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#LoginCreate'
  delete '/logout',  to: 'sessions#destroy'
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  #get  '/department', to: 'static_pages#department'
  get '/address', to: 'emp_details#address'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')

  

  resources :emp_details
  resources :login_master
  resources :emp_address
  resources :leave
  resources :department 
  resources :designation
  
  resources :salary


  #resources :sessions, only: [:create, :destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
