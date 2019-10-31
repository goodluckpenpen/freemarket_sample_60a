class Card < ApplicationRecord
  belongs_to :user
  
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # VALID_PHONE_REGEX = /\A\d{10,11}\z/
  # VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[A-Z])(?=.*?\d)[a-zA-Z\d]{7,128}+\z/
  # VALID_POSTAL_CODE = /\A\d{3}-\d{4}\z/i
  # VALID_CARD_NUMBER_REGEX = /\A\d{14,16}\z/
  # VALID_SECURITY_CODE = /\A\d{3,4}\z/
  # VALID_NAME_KANA = /\A[\p{katakana}\p{blank}ー－]+\z/

  # payment
  # validates :number, format: { with: VALID_CARD_NUMBER_REGEX, message: 'のフォーマットが不適切です'}, allow_blank: true
  # validates :number, presence: true
  # validates :exp_year, presence: true
  # validates :exp_month, presence: true
  # validates :cvc, length: {minimum: 3, maximum: 4}, format: { with: VALID_SECURITY_CODE, message: 'の入力が正しくありません'}, allow_blank: true
  # validates :cvc, presence: true
  ############## ↑上文はバリデーション検討中のためコメントアウト ##################
  
end
