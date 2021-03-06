# == Route Map
#
#                   Prefix Verb   URI Pattern                    Controller#Action
#                   events GET    /events(.:format)              events#index
#                          POST   /events(.:format)              events#create
#                new_event GET    /events/new(.:format)          events#new
#               edit_event GET    /events/:id/edit(.:format)     events#edit
#                    event GET    /events/:id(.:format)          events#show
#                          PATCH  /events/:id(.:format)          events#update
#                          PUT    /events/:id(.:format)          events#update
#                          DELETE /events/:id(.:format)          events#destroy
#                     root GET    /                              home#index
#         new_user_session GET    /users/sign_in(.:format)       devise/sessions#new
#             user_session POST   /users/sign_in(.:format)       devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)      devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)  devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format) devise/passwords#edit
#            user_password PATCH  /users/password(.:format)      devise/passwords#update
#                          PUT    /users/password(.:format)      devise/passwords#update
#                          POST   /users/password(.:format)      devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)        devise/registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)       devise/registrations#new
#   edit_user_registration GET    /users/edit(.:format)          devise/registrations#edit
#        user_registration PATCH  /users(.:format)               devise/registrations#update
#                          PUT    /users(.:format)               devise/registrations#update
#                          DELETE /users(.:format)               devise/registrations#destroy
#                          POST   /users(.:format)               devise/registrations#create

Rails.application.routes.draw do
  resources :events
  post '/ajax/events' => 'events#ajaxCreate'
  put '/ajax/events' => 'events#ajaxUpdate'
  root 'home#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
