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
end

