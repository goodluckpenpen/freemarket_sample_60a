Rails.application.routes.draw do
  devise_for :users
  root "items#index"
  get "items/item"
  resources :signups do
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
end

