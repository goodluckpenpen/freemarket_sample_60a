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

  resources :items,only: [:show, :index]
  # get "items/item"
  get "items/select"

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

