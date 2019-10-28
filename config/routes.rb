Rails.application.routes.draw do
  #クレジットカード登録
  resources :cards, only: [:new, :show] do
    collection do
      post 'show', to: 'cards#show'
      post 'pay', to: 'cards#pay'
      post 'delete', to: 'cards#delete'
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

  resources :purchase, only: [:index, :show] do
    collection do
      # get 'show', to: 'purchase#show'
      post 'pay', to: 'purchase#pay'
      get 'done', to: 'purchase#done'
    end
  end

end

