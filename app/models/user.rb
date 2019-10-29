class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable,
        :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
        
  def self.find_oauth(auth)
    uid = auth.uid
    provider = auth.provider
    snscredential = SnsCredential.where(uid: uid, provider: provider).first
    if snscredential.present?
      user = User.where(id: snscredential.user_id).first
    else
      user = User.where(email: auth.info.email).first
      if user.present?
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
      else
        user = User.create(
          nickname: auth.info.name,
          email:    auth.info.email,
          password: Devise.friendly_token[0, 20],
          telephone: "08000000000"
          )
        SnsCredential.create(
          uid: uid,
          provider: provider,
          user_id: user.id
          )
      end
    end
    return user
  end

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PHONE_REGEX = /\A\d{10,11}\z/
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{7,128}+\z/
  VALID_POSTAL_CODE = /\A\d{3}-\d{4}\z/i
  VALID_CARD_NUMBER_REGEX = /\A\d{14,16}\z/
  VALID_SECURITY_CODE = /\A\d{3,4}\z/
  VALID_NAME_KANA = /\A[\p{katakana}\p{blank}ー－]+\z/
  
  #newmember
  validates :nickname, presence: true, length: { maximum: 20 }
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX, message: 'のフォーマットが不適切です'}, allow_blank: true #エラーメッセージの重複を避ける
  validates :password, presence: true, length: {minimum: 7, maximum: 128}, format: { with: VALID_PASSWORD_REGEX, message: 'は英字(大・小文字)と数字両方を含むパスワードを設定してください'}, allow_blank: true
  validates :password_confirmation, length: {minimum: 7, maximum: 128}, format: { with: VALID_PASSWORD_REGEX, message: 'は英字(大・小文字)と数字両方を含むパスワードを設定してください'}, allow_blank: true
  validates :password_confirmation, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, format: { with: VALID_NAME_KANA, message: 'はカタカナで入力してください'}, allow_blank: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, format: { with: VALID_NAME_KANA, message: 'はカタカナで入力してください'}, allow_blank: true
  validates :first_name_kana, presence: true
  validates :birthdate_year, presence: true
  validates :birthdate_month, presence: true
  validates :birthdate_day, presence: true

  #phonenumber
  validates :phone_number, format: { with: VALID_PHONE_REGEX, message: 'の入力が正しくありません'}, allow_blank: true
  validates :phone_number, presence: true
  #authentication
  validates :authentication_code, numericality: { only_integer: true }, allow_blank: true
  validates :authentication_code, presence: true
  #address
  validates :address_last_name, presence: true
  validates :address_first_name, presence: true
  validates :address_last_name_kana, format: { with: VALID_NAME_KANA, message: 'はカタカナで入力してください'}, allow_blank: true
  validates :address_last_name_kana, presence: true
  validates :address_first_name_kana, format: { with: VALID_NAME_KANA, message: 'はカタカナで入力してください'}, allow_blank: true
  validates :address_first_name_kana, presence: true
  validates :postal_code, length: { maximum: 8 }, format: { with: VALID_POSTAL_CODE, message: 'のフォーマットが不適切です'}, allow_blank: true
  validates :postal_code, presence: true
  validates :prefecture, presence: true
  validates :city, presence: true
  validates :block_number, presence: true
  # payment
  validates :card_number, format: { with: VALID_CARD_NUMBER_REGEX, message: 'のフォーマットが不適切です'}, allow_blank: true
  validates :card_number, presence: true
  validates :card_expiration_date_year, presence: true
  validates :card_expiration_date_month, presence: true
  validates :card_security_code, length: {minimum: 3, maximum: 4}, format: { with: VALID_SECURITY_CODE, message: 'の入力が正しくありません'}, allow_blank: true
  validates :card_security_code, presence: true

  has_many :buyed_items, foreign_key: "buyer_id", class_name: "Item"
  has_many :selling_items, -> { where("buyer_id is NULL") }, foreign_key: "seller_id", class_name: "Item"
  has_many :sold_items, -> { where("buyer_id is not NULL") }, foreign_key: "seller_id", class_name: "Item"
  has_many :items
end
