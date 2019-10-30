require 'rails_helper'
describe User do
  describe '#create' do
    
    # 値が空では登録できないこと
    
    it "is invalid without a nickname" do
      user = build(:user, nickname: "")
      user.valid?
      expect(user.errors[:nickname]).to include("を入力してください")
    end

    it "is invalid without a email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "is invalid without a password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end


    it "is invalid without a password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end

    it "is invalid without a last_name" do
      user = build(:user, last_name: "")
      user.valid?
      expect(user.errors[:last_name]).to include("を入力してください")
    end


    it "is invalid without a first_name" do
      user = build(:user, first_name: "")
      user.valid?
      expect(user.errors[:first_name]).to include("を入力してください")
    end

    it "is invalid without a last_name_kana" do
      user = build(:user, last_name_kana: "")
      user.valid?
      expect(user.errors[:last_name_kana]).to include("を入力してください")
    end

    it "is invalid without a first_name_kana" do
      user = build(:user, first_name_kana: "")
      user.valid?
      expect(user.errors[:first_name_kana]).to include("を入力してください")
    end

    it "is invalid without a birthdate_year" do
      user = build(:user, birthdate_year: "")
      user.valid?
      expect(user.errors[:birthdate_year]).to include("を入力してください")
    end

    it "is invalid without a birthdate_month" do
      user = build(:user, birthdate_month: "")
      user.valid?
      expect(user.errors[:birthdate_month]).to include("を入力してください")
    end

    it "is invalid without a birthdate_day" do
      user = build(:user, birthdate_day: "")
      user.valid?
      expect(user.errors[:birthdate_day]).to include("を入力してください")
    end


    it "is invalid without a phone_number" do
      user = build(:user, phone_number: "")
      user.valid?
      expect(user.errors[:phone_number]).to include("を入力してください")
    end

    it "is invalid without a address_last_name" do
      user = build(:user, address_last_name: "")
      user.valid?
      expect(user.errors[:address_last_name]).to include("を入力してください")
    end
    
    it "is invalid without a address_first_name" do
      user = build(:user, address_first_name: "")
      user.valid?
      expect(user.errors[:address_first_name]).to include("を入力してください")
    end
    
    it "is invalid without a address_last_name_kana" do
      user = build(:user, address_last_name_kana: "")
      user.valid?
      expect(user.errors[:address_last_name_kana]).to include("を入力してください")
    end
    
    it "is invalid without a address_first_name_kana" do
      user = build(:user, address_first_name_kana: "")
      user.valid?
      expect(user.errors[:address_first_name_kana]).to include("を入力してください")
    end

    it "is invalid without a postal_code" do
      user = build(:user, postal_code: "")
      user.valid?
      expect(user.errors[:postal_code]).to include("を入力してください")
    end

    it "is invalid without a prefecture" do
      user = build(:user, prefecture: "")
      user.valid?
      expect(user.errors[:prefecture]).to include("を入力してください")
    end

    it "is invalid without a city" do
      user = build(:user, city: "")
      user.valid?
      expect(user.errors[:city]).to include("を入力してください")
    end

    it "is invalid without a block_number" do
      user = build(:user, block_number: "")
      user.valid?
      expect(user.errors[:block_number]).to include("を入力してください")
    end

    it "is invalid without a card_number" do
      user = build(:user, card_number: "")
      user.valid?
      expect(user.errors[:card_number]).to include("を入力してください")
    end

    it "is invalid without a card_expiration_date_month" do
      user = build(:user, card_expiration_date_month: "")
      user.valid?
      expect(user.errors[:card_expiration_date_month]).to include("を入力してください")
    end

    it "is invalid without a card_expiration_date_year" do
      user = build(:user, card_expiration_date_year: "")
      user.valid?
      expect(user.errors[:card_expiration_date_year]).to include("を入力してください")
    end

    it "is invalid without a card_security_code" do
      user = build(:user, card_security_code: "")
      user.valid?
      expect(user.errors[:card_security_code]).to include("を入力してください")
    end

    # emailのフォーマットが不適切でないか

    it 'is invalid with a email wrong format' do
      user = build(:user, email: 'a@a')
      user.valid?
      expect(user.errors[:email]).to include("のフォーマットが不適切です")
    end

    it 'is invalid with a email wrong format' do
      user = build(:user, email: '12345678')
      user.valid?
      expect(user.errors[:email]).to include("のフォーマットが不適切です")
    end

# パスワードが7〜128文字であるか

    it "is valid with a password that has more than 7 characters " do
      user = build(:user, password: "Kaki1818", password_confirmation: "Kaki1818")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a password that has less than 6 characters " do
      user = build(:user, password: "Kaki18", password_confirmation: "Kaki18")
      user.valid?
      expect(user.errors[:password][0]).to include("は7文字以上で入力してください")
    end

    it "is valid with a password that has more than 128 characters " do
      user = build(:user, password: "Aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa123",
      password_confirmation: "Aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa123") # 128文字
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a password that has more than 129 characters " do
      user = build(:user, password: "Aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa1234",
      password_confirmation: "Aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa12345aaaaa1234") # 129文字
      user.valid?
      expect(user.errors[:password][0]).to include("は128文字以内で入力してください")
    end

# パスワードに英字と数字が含まれているか

    it "is valid with a password that Contains letters and numbers " do
      user = build(:user, password: "Kaki1818", password_confirmation: "Kaki1818")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a password except for numbers" do
      user = build(:user, password: "0000000", password_confirmation: "0000000")
      user.valid?
      expect(user.errors[:password][0]).to include("は英字(大・小文字)と数字両方を含むパスワードを設定してください")
    end

    it "is invalid with a password except for alphabets" do
      user = build(:user, password: "aaaaaaa", password_confirmation: "aaaaaaa")
      user.valid?
      expect(user.errors[:password][0]).to include("は英字(大・小文字)と数字両方を含むパスワードを設定してください")
    end

# パスワードとパスワード（確認）が一致しているか

    it "is valid with a password and password confirmation match " do
      user = build(:user, password: "Kaki1818", password_confirmation: "Kaki1818")
      user.valid?
      expect(user).to be_valid
    end

    it "is valid with a password and password confirmation match " do
      user = build(:user, password: "Kaki1818", password_confirmation: "Kaki1919")
      user.valid?
      expect(user.errors[:password_confirmation][0]).to include("とパスワードの入力が一致しません")
    end

# カナ入力になっているか

    it "is valid with a last_name_kana that katakana " do
      user = build(:user, last_name_kana: "ア")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a last_name_kana that katakana " do
      user = build(:user, last_name_kana: "あ")
      user.valid?
      expect(user.errors[:last_name_kana][0]).to include("はカタカナで入力してください")
    end

    it "is valid with a first_name_kana that katakana " do
      user = build(:user, first_name_kana: "ア")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a first_name_kana that katakana " do
      user = build(:user, first_name_kana: "あ")
      user.valid?
      expect(user.errors[:first_name_kana][0]).to include("はカタカナで入力してください")
    end

# 電話番号の形式が不適切でないか

    it "is valid with a phone_number that Phone number format " do
      user = build(:user, phone_number: "08012345678")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a phone_num that Phone number format " do
      user = build(:user, phone_number: "a8012345678")
      user.valid?
      expect(user.errors[:phone_number][0]).to include("の入力が正しくありません")
    end

# 電話番号が 10桁もしくは11桁か

    it "is valid with a phone_number that has more than 10 digit" do
      user = build(:user, phone_number: "0801234567")
      user.valid?
      expect(user).to be_valid
    end
    
    it "is valid with a phone_number that has more than 11 digit" do
      user = build(:user, phone_number: "09012345678")
      user.valid?
      expect(user).to be_valid
    end
  
    it "is invalid with a phone_number that has less than 9 digit" do
      user = build(:user, phone_number: "a8012345678")
      user.valid?
      expect(user.errors[:phone_number]).to include("の入力が正しくありません")
    end
    
    it "is invalid with a phone_number that has more than 12 digit" do
      user = build(:user, phone_number: "080123456789")
      user.valid?
      expect(user.errors[:phone_number][0]).to include("の入力が正しくありません")
    end

# 認証番号に数字以外が含まれていないか

    it "is valid with a authentication_num that contains non-numeric characters " do
      user = build(:user, authentication_code: "0")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a authentication_num that contains non-numeric characters " do
      user = build(:user, authentication_code: "a")
      user.valid?
      expect(user.errors[:authentication_code][0]).to include("は数値で入力してください")
    end

# address_nameがカナ入力になっているか

    it "is valid with a address_last_name_kana that katakana " do
      user = build(:user, address_last_name_kana: "ア")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a address_last_name_kana that katakana " do
      user = build(:user, address_last_name_kana: "あ")
      user.valid?
      expect(user.errors[:address_last_name_kana][0]).to include("はカタカナで入力してください")
    end

    it "is valid with a address_first_name_kana that katakana " do
      user = build(:user, address_first_name_kana: "ア")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a address_first_name_kana that katakana " do
      user = build(:user, address_first_name_kana: "あ")
      user.valid?
      expect(user.errors[:address_first_name_kana][0]).to include("はカタカナで入力してください")
    end

# 郵便番号が不適切な形式になっていないか

    it "is valid with a postal_code that Postal code format " do
      user = build(:user, postal_code: "000-0000")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid with a postal_code that Postal code format " do
      user = build(:user, postal_code: "0000000")
      user.valid?
      expect(user.errors[:postal_code]).to include("のフォーマットが不適切です")
    end

# クレジットカード番号が14桁もしくは16桁で数字のみであるか

    it "is valid with a card_number that has less than 16 digit " do
      user = build(:user, card_number: "12345678901234") # 14桁
      expect(user).to be_valid
    end
    
    it "is valid with a card_number that has less than 16 digit " do
      user = build(:user, card_number: "1234567890123456") # 16桁
      expect(user).to be_valid
    end

    it "is invalid with a card_number that has more than 17 digit" do
      user = build(:user, card_number: "12345678901234567") # 17桁
      user.valid?
      expect(user.errors[:card_number]).to include("のフォーマットが不適切です")
    end
    
    it "is invalid with a card_number that has more than 13 digit" do
      user = build(:user, card_number: "1234567890123") # 13桁
      user.valid?
      expect(user.errors[:card_number]).to include("のフォーマットが不適切です")
    end
    
    it "is invalid with a card_number except for numbers" do
      user = build(:user, card_number: "a234567890123456")
      user.valid?
      expect(user.errors[:card_number]).to include("のフォーマットが不適切です")
    end

# クレジットカードのセキュリティコードが3桁もしくは４桁で数字のみであるか

    it "is valid with a payment_card_security_code that has less than 3 digit " do
      user = build(:user, card_security_code: "123")
      expect(user).to be_valid
    end
    
    it "is valid with a payment_card_security_code that has less than 4 digit " do
      user = build(:user, card_security_code: "1234")
      expect(user).to be_valid
    end

    it "is invalid with a card_security_code that has more than 5 digit" do
      user = build(:user, card_security_code: "12345")
      user.valid?
      expect(user.errors[:card_security_code]).to include("は4文字以内で入力してください")
    end
    
    it "is invalid with a card_security_code that has less than 2 digit" do
      user = build(:user, card_security_code: "12")
      user.valid?
      expect(user.errors[:card_security_code]).to include("は3文字以上で入力してください")
    end

    it "is invalid with a card_security_code except for numbers" do
      user = build(:user, card_security_code: "a234")
      user.valid?
      expect(user.errors[:card_security_code]).to include("の入力が正しくありません")
    end

  end
end