RebelFoundation::Application.routes.draw do
  resources :users do
    put 'update_password'
  end
  match '/dashboard'        => 'users#dashboard',       as: :dashboard
  match '/forgot_password'  => 'users#forgot_password', as: :forgot_password
  match '/reset_password'   => 'users#reset_password',  as: :reset_password
  
  resource  :user_session
  match '/login'            => 'user_session#new',      as: :login
  match '/logout'           => 'user_session#destroy',  as: :logout

  # OAuth how you humor me so ...
  match '/auth/:provider/callback'  => 'user_session#create'
  match '/auth/failure'             => 'user_session#failure'

  scope controller: :pages do
    get :contact_us
    get :services
    get :portfolio
    get :about
  end
  
  root to: 'pages#index'
end
