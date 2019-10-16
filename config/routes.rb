Rails.application.routes.draw do
  devise_for :users
  root "items#index"

  get "items/show"
  get "items/item"
  get "items/select"
  get "signups/registration"
  get "signups/newmember"
  get "signups/phonenumber"
  get "signups/authentication"
  get "signups/address"
  get "signups/payment"
  get "signups/completion"
end

