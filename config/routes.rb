Rails.application.routes.draw do
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

  resources :items,only: [:show, :index, :new, :destroy] do
  # get "items/item"
<<<<<<< HEAD
  get "items/bought"
  get "items/purchase"
=======
  # get "items/bought"
  # get "items/purchase"
>>>>>>> master


  get "items/buy"
  get "items/transaction"
  resources :items,only: [:show, :index] do
    member do
      get 'select'
      end
    collection do
      
      end
    end
  end
<<<<<<< HEAD
  
=======

  resources :categories,only: [:show, :index]

>>>>>>> master
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

