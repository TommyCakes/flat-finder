Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users
            #  :path => '',
            #  :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},

  resources :users, only: [:show]
  resources :rooms
  resources :photos

  resources :rooms do
    resources :bookings, only: [:create]
  end

end
