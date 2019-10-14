Rails.application.routes.draw do
  root "items#index"
  get "items/item"
  get "signups/registration"
  get "signups/newmember"
  get "signups/phonenumber"
  get "signups/authentication"
  get "signups/address"
  get "signups/payment"
  get "signups/completion"
end
