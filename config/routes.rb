Rails.application.routes.draw do
  #クレジットカード登録
  resources :cards, only: [:new, :show, :destroy] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
    end
  end

  devise_for :users
  root "items#index"
  get "items/item"
  resources :signups, only: [:create] do
    collection do
      get "registration"
      get "newmember"
      get "phonenumber"
      get "authentication"
      get "address"
      get "payment"
      get "completion"
    end
  end

  resources :items,only: [:show, :index, :destroy]
  # get "items/item"
  # get "items/bought"
  # get "items/purchase"


  get "items/buy"
  get "items/transaction"
  resources :items,only: [:show, :index] do
    member do
      get 'select'
    end
    collection do
      
    end
  end

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

  resources :purchases, only: [:index, :show] do
    member do
    end
    collection do
      # get 'show', to: 'purchases#show'
      post 'pay', to: 'purchases#pay'
      get 'buy', to: 'purchases#buy'
    end
  end

end

