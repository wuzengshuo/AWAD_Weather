# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#           admin_addresses GET    /admin/addresses(.:format)                                                               admin/addresses#index
#                           POST   /admin/addresses(.:format)                                                               admin/addresses#create
#         new_admin_address GET    /admin/addresses/new(.:format)                                                           admin/addresses#new
#        edit_admin_address GET    /admin/addresses/:id/edit(.:format)                                                      admin/addresses#edit
#             admin_address GET    /admin/addresses/:id(.:format)                                                           admin/addresses#show
#                           PATCH  /admin/addresses/:id(.:format)                                                           admin/addresses#update
#                           PUT    /admin/addresses/:id(.:format)                                                           admin/addresses#update
#                           DELETE /admin/addresses/:id(.:format)                                                           admin/addresses#destroy
#     admin_daily_forecasts GET    /admin/daily_forecasts(.:format)                                                         admin/daily_forecasts#index
#                           POST   /admin/daily_forecasts(.:format)                                                         admin/daily_forecasts#create
#  new_admin_daily_forecast GET    /admin/daily_forecasts/new(.:format)                                                     admin/daily_forecasts#new
# edit_admin_daily_forecast GET    /admin/daily_forecasts/:id/edit(.:format)                                                admin/daily_forecasts#edit
#      admin_daily_forecast GET    /admin/daily_forecasts/:id(.:format)                                                     admin/daily_forecasts#show
#                           PATCH  /admin/daily_forecasts/:id(.:format)                                                     admin/daily_forecasts#update
#                           PUT    /admin/daily_forecasts/:id(.:format)                                                     admin/daily_forecasts#update
#                           DELETE /admin/daily_forecasts/:id(.:format)                                                     admin/daily_forecasts#destroy
#                     admin GET    /admin(.:format)                                                                         admin/home#index
#                  frontend GET    /frontend(.:format)                                                                      frontend#index
#          frontend_buttons GET    /frontend/buttons(.:format)                                                              frontend#buttons
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  namespace :admin do
    resources :addresses
    resources :daily_forecasts
    resources :home do
      get :hourly_data, on: :collection
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/admin' => 'admin/home#index'
  root to: 'admin/home#index'
end
