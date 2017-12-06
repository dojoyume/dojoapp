Rails.application.routes.draw do

  # devise_for :salons
  devise_for :students
  # devise_for :salons, controllers: { omniauth_callbacks: 'salons/omniauth_callbacks' }
  # devise_scope :salon do
  #   delete :sign_out, to: 'devise/sessions#destroy', as: :destroy_salon_session
  devise_for :salons, :controllers => {
  :sessions      => "devise/sessions",
  :registrations => "devise/registrations",
  :passwords     => "devise/passwords",
  :omniauth_callbacks => "salons/omniauth_callbacks"
}
  # end
root to: 'tops#index'
resources :passes
resources :students, only: [:edit, :update]
resources :salons, only: [:edit, :update]

end
