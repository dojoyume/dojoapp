Rails.application.routes.draw do
  devise_for :salons
  devise_for :students
root to: 'tops#index'
resources :passes
end
