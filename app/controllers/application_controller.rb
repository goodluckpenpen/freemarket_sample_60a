class ApplicationController < ActionController::Base
  before_action :basic_auth, if: :production?
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception

    protected
  def configure_permitted_parameters
    added_attrs = [ :nickname,
                    :first_name,
                    :last_name,
                    :first_name_kana,
                    :last_name_kana,
                    :birthdate_year,
                    :birthdate_month,
                    :birthdate_day,
                    :phone_number,
                    :authentication_num,
                    :address_last_name,
                    :address_first_name,
                    :address_last_name_kana,
                    :address_first_name_kana,
                    :postal_code,
                    :prefecture,
                    :city,
                    :block_number,
                    :building_name,
                    :home_phone_number
                  ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

  private

  def production?
    Rails.env.production?
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end
end
