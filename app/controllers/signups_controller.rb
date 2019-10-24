class SignupsController < ApplicationController
  before_action :validates_newmember, only: :phonenumber # newmember バリデーション
  before_action :validates_phonenumber, only: :authentication # phonenumber バリデーション
  before_action :validates_authentication, only: :address # authentication バリデーション
  before_action :validates_address, only: :payment # address バリデーション
  before_action :validates_payment, only: :create # payment バリデーション

  def registration
  end

  def newmember
    @user = User.new # 新規のインスタンスを作成
  end

  def phonenumber
    @user = User.new
  end

  def authentication
    @user = User.new
  end

  def address
    @user = User.new
  end

  def payment
    @user = User.new
  end

  def create
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
      postal_code: session[:postal_code],
      prefecture: session[:prefecture],
      city: session[:city],
      block_number: session[:block_number],
      building_name: session[:building_name],
      home_phone_number: session[:home_phone_number],
      card_number: session[:card_number],
      card_expiration_date_month: session[:card_expiration_date_month],
      card_expiration_date_year: session[:card_expiration_date_year],
      card_security_code: session[:card_security_code],
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
    # sign_inメソッドを使いcreateアクションで作成・保存したデータのidを用いてサインイン
    sign_in User.find(session[:id]) unless user_signed_in?
  end

  
  private
  # ストロングパラメーターで許可するキーを設定する
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
      :postal_code,
      :prefecture,
      :city,
      :block_number,
      :building_name,
      :home_phone_number,
      :card_number,
      :card_security_code,
      :card_expiration_date_month,
      :card_expiration_date_year,
    )
  end
  def validates_newmember
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
      # 入力前の情報は、バリデーションに通る値を仮で入れる
      phone_number: "08012345678",
      authentication_code: "123",
      address_last_name: "山田",
      address_first_name: "太郎",
      address_last_name_kana: "ヤマダ",
      address_first_name_kana: "タロウ",
      postal_code: "000-0000",
      prefecture: "千葉県",
      city: "千葉市",
      block_number: "若葉区1-1-1",
      card_number: "1234567812345678",
      card_expiration_date_year: "20",
      card_expiration_date_month: "3",
      card_security_code: "111",
    )
    # 仮で作成したインスタンスのバリデーションチェックを行う
    render '/signup/newmember' unless @user.valid?(:validates_newmember)
    render '/signup/newmember' unless @user.valid?(:validates_phonenumber)
  end

  def validates_phonenumber
    # phonenumberで入力された値をsessionに保存
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
      
      authentication_code: "123",
      address_last_name: "山田",
      address_first_name: "太郎",
      address_last_name_kana: "ヤマダ",
      address_first_name_kana: "タロウ",
      postal_code: "000-0000",
      prefecture: "千葉県",
      city: "千葉市",
      block_number: "若葉区1-1-1",
      card_number: "1234567812345678",
      card_expiration_date_year: "20",
      card_expiration_date_month: "3",
      card_security_code: "111",
    )
    render '/signups/phonenumber' unless @user.valid?
  end

  def validates_authentication
    # authenticationで入力された値をsessionに保存
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

      address_last_name: "山田",
      address_first_name: "太郎",
      address_last_name_kana: "ヤマダ",
      address_first_name_kana: "タロウ",
      postal_code: "000-0000",
      prefecture: "千葉県",
      city: "千葉市",
      block_number: "若葉区1-1-1",
      building_name: "yamadaビル",
      home_phone_number: "09000000000",
      card_number: "1234567812345678",
      card_expiration_date_year: "20",
      card_expiration_date_month: "3",
      card_security_code: "111",
    )
    render '/signups/authentication' unless @user.valid?
  end

  def validates_address
    # addressで入力された値をsessionに保存
    session[:address_last_name] = user_params[:address_last_name]
    session[:address_first_name] = user_params[:address_first_name]
    session[:address_last_name_kana] = user_params[:address_last_name_kana]
    session[:address_first_name_kana] = user_params[:address_first_name_kana]
    session[:postal_code] = user_params[:postal_code]
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
      postal_code: session[:postal_code],
      prefecture: session[:prefecture],
      city: session[:city],
      block_number: session[:block_number],
      building_name: session[:building_name],
      home_phone_number: session[:home_phone_number],

      card_number: "1234567812345678",
      card_expiration_date_year: "20",
      card_expiration_date_month: "3",
      card_security_code: "111",
    )
    render '/signups/address' unless @user.valid?
  end

  def validates_payment
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
      postal_code: session[:postal_code],
      prefecture: session[:prefecture],
      city: session[:city],
      block_number: session[:block_number],
      building_name: session[:building_name],
      home_phone_number: session[:home_phone_number],
      card_number: session[:card_number],
      card_expiration_date_month: session[:card_expiration_date_month],
      card_expiration_date_year: session[:card_expiration_date_year],
      card_security_code: session[:card_security_code],
    )
    render '/signups/payment' unless @user.valid?
  end
end