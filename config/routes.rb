Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  get "items/item"
  get "signups/registration"
  resources :signups do
    collection do
      get "newmember"
      get "phonenumber"
      get "address"
      get "payment"
      get "completion"
    end
  end

  resources :items,only: [:show, :index]
  # get "items/item"
  # get "items/bought"
  get "items/select"
  # get "items/purchase"

  resources :users, only: [:show] do
    member do
      
    end
    collection do 
      get 'card_add_btn'
      get 'card_delete_btn'
      get 'card_input_info'
      get 'create'
      get 'information'
      get 'logout'
      get 'mypage'
      get 'profile'  
      get 'seller_selling'
      get 'seller_trading'
      get 'seller_sold'
    end
  end
end

