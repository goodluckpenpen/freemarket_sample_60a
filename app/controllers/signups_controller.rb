class SignupsController < ApplicationController
  def registration
  end

  def newmember
  end

  def phonenumber
  end

  def authentication
  end

  def address
  end

  def payment
  end

  def completion
  end

  private
    def user_params
    params.require(:user).permit(
      :nickname,
      :email,
      :password,
      :password_confirmation,
      :last_name,
      :first_name,
      :last_name_kana,
      :first_name_kana,
      :birthdate_year,
      :birthdate_month,
      :birthdate_day,
      :phone_number,
      :address_last_name,
      :address_first_name,
      :address_last_name_kana,
      :address_first_name_kana,
      :postal_coad,
      :prefecture,
      :city,
      :block_number,
      :building_name,
      :address_phone_number,
      :card_number,
      :card_security_code,
      :card_expiration_date_month,
      :card_expiration_date_year,
      :introduce,
      :reset_password_token,
      :reset_password_sent_at,
      :remember_created_at,
      :created_at,
      :updated_at
    )
  end
end