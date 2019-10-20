class SignupsController < ApplicationController

  def registration
  end

  def newmember
    @user = User.new
  end

  def phonenumber
    # newmemberで入力された値をsessionに保存
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:password_confirmation] = user_params[:password_confirmation]
    session[:last_name] = user_params[:last_name]
    session[:first_name] = user_params[:first_name]
    session[:last_name_kana] = user_params[:last_name_kana]
    session[:first_name_kana] = user_params[:first_name_kana]
    session[:birthdate_year] = user_params[:birthdate_year]
    session[:birthdate_month] = user_params[:birthdate_month]
    session[:birthdate_day] = user_params[:birthdate_day]
    @user = User.new( # 新規のインスタンスを作成
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
    ) 
  end

  def authentication
    session[:phone_number] = user_params[:phone_number]
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      phone_number: session[:phone_number],
    )
  end

  def address
    # phonenumberで入力された値をsessionに保存
    session[:authentication_code] = user_params[:authentication_code]
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      phone_number: session[:phone_number],
      authentication_code: session[:authentication_code],
    )
  end

  def payment
    # addressで入力された値をsessionに保存
    session[:address_last_name] = user_params[:address_last_name]
    session[:address_first_name] = user_params[:address_first_name]
    session[:address_last_name_kana] = user_params[:address_last_name_kana]
    session[:address_first_name_kana] = user_params[:address_first_name_kana]
    session[:postal_coad] = user_params[:postal_coad]
    session[:prefecture] = user_params[:prefecture]
    session[:city] = user_params[:city]
    session[:block_number] = user_params[:block_number]
    session[:building_name] = user_params[:building_name]
    session[:home_phone_number] = user_params[:home_phone_number]
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      phone_number: session[:phone_number],
      authentication_code: session[:authentication_code],
      address_last_name: session[:address_last_name],
      address_first_name: session[:address_first_name],
      address_last_name_kana: session[:address_last_name_kana],
      address_first_name_kana: session[:address_first_name_kana],
      postal_coad: session[:postal_coad],
      prefecture: session[:prefecture],
      city: session[:city],
      block_number: session[:block_number],
      building_name: session[:building_name],
      home_phone_number: session[:home_phone_number],
    )
  end

  def create
    session[:card_number] = user_params[:card_number]
    session[:card_expiration_date_month] = user_params[:card_expiration_date_month]
    session[:ard_expiration_date_year] = user_params[:ard_expiration_date_year]
    session[:card_security_code] = user_params[:card_security_code]
    @user = User.new(
    # sessionに保存された値をインスタンスに渡す
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      password_confirmation: session[:password_confirmation],
      last_name: session[:last_name],
      first_name: session[:first_name],
      last_name_kana: session[:last_name_kana],
      first_name_kana: session[:first_name_kana],
      birthdate_year: session[:birthdate_year],
      birthdate_month: session[:birthdate_month],
      birthdate_day: session[:birthdate_day],
      phone_number: session[:phone_number],
      authentication_code: session[:authentication_code],
      address_last_name: session[:address_last_name],
      address_first_name: session[:address_first_name],
      address_last_name_kana: session[:address_last_name_kana],
      address_first_name_kana: session[:address_first_name_kana],
      postal_coad: session[:postal_coad],
      prefecture: session[:prefecture],
      city: session[:city],
      block_number: session[:block_number],
      building_name: session[:building_name],
      home_phone_number: session[:home_phone_number],
    # paymentで入力した値をインスタンスに渡す
      card_number: session[:card_number],
      card_expiration_date_month: session[:card_expiration_date_month],
      card_expiration_date_year: session[:card_expiration_date_year],
      card_security_code: session[:card_security_code]
    )

    if @user.save
      # ログイン状態維持のためuser_idをsessionに保存
        session[:user_id] = @user.id
        redirect_to '/signups/completion'
    else
        render '/signups/payment'
    end
  end

  def completion
    sign_in User.find(session[:id]) unless user_signed_in?
  end

  
  private
  # 許可するキーを設定する
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
      :authentication_code,
      :address_last_name,
      :address_first_name,
      :address_last_name_kana,
      :address_first_name_kana,
      :postal_coad,
      :prefecture,
      :city,
      :block_number,
      :building_name,
      :home_phone_number,
      :card_number,
      :card_security_code,
      :card_expiration_date_month,
      :card_expiration_date_year
    )
  end
end