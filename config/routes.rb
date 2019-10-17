Rails.application.routes.draw do
  devise_for :users
  root "items#index"

  resources :items,only: [:show, :index]
  # get "items/item"
  get "items/select"
  get "signups/registration"
  get "signups/newmember"
  get "signups/phonenumber"
  get "signups/authentication"
  get "signups/address"
  get "signups/payment"
  get "signups/completion"
  

  resources :users, only: :show do
    member do
      
    end
    collection do
      get 'card_add_btn'
      get 'card_delete_btn'
      get 'card_input_info'
      get 'information'
      get 'logout'
      get 'mypage'
      get 'profile'
    end
  end
end

