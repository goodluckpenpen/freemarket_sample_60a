class CardsController < ApplicationController
  # before_action :authenticate_user!
  require 'payjp'

  # クレジットカード情報入力画面
  def new
    card = Card.where(user_id: current_user.id)
    redirect_to action: "show" if card.exists?
  end

  # 登録画面で入力した情報をDBに保存
  def pay
    Payjp.api_key = "sk_test_9629ac740599209dbad72f1b"
    if params['payjp-token'].blank?
      redirect_to action: "new"
    else
      customer = Payjp::Customer.create( # ここで先ほど生成したトークンを顧客情報と紐付け、PAY.JP管理サイトに送信
        card: params['payjp-token'],
        metadata: {user_id: current_user.id} # 記述しなくても大丈夫です
      )
      @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
      if @card.save
        redirect_to action: "show"
      else
        redirect_to action: "pay"
      end
    end
  end

  # 後ほど削除機能を実装します。
  def delete #PayjpとCardデータベースを削除します
    card = Card.where(user_id: current_user.id).first
    if card.blank?
    else
      # Payjp.api_key = 'sk_test_9629ac740599209dbad72f1b'
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
      redirect_to action: "new"
  end

 # 後ほど登録したクレジットの表示画面を作成します。
  def show
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to action: "new" 
    else
      Payjp.api_key = "sk_test_9629ac740599209dbad72f1b"
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end
end

# ---------------------------------------------
  
# require "payjp"

# def new
#   card = Card.where(user_id: current_user.id)
#   if card.exists?
#     redirect_to mypage_cards_path
#   else
#     @card = Card.new
#   end
# end

# def pay 
#   before_uri = URI.parse(request.referer)
#   path = Rails.application.routes.recognize_path(before_uri.path)
#   request_path = before_uri.path
#   Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
#   if params['payjp-token'].blank?
#     redirect_to action: "new"
#   else
#     customer = Payjp::Customer.create(
#     card: params['payjp-token'],
#     metadata: {user_id: current_user.id}
#     ) 
#     @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
#     if @card.save
#       if request_path == "/mypage/cards/new"
#         redirect_to new_login_complete_signup_index_path
#       else request_path == "/mypage/cards/credit_add"
#         redirect_to mypage_cards_path
#       end
#     else
#       redirect_to action: "pay"
#     end
#   end
# end

# def delete
#   @card = Card.where(user_id: current_user.id).first
#   if @card.blank?
#   else
#     Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
#     customer = Payjp::Customer.retrieve(@card.customer_id)
#     customer.delete
#     if @card.delete
#       redirect_to mypage_cards_path
#     end
#   end
# end


# def show
#   card = Card.where(user_id: current_user.id).first
#   if card.blank?
    
#   else
#     Payjp.api_key = ENV["PAYJP_PRIVATE_KEY"]
#     customer = Payjp::Customer.retrieve(card.customer_id)
#     @default_card_information = customer.cards.retrieve(card.card_id)
#   end
# end
# end

# ----------------------------------------------------------------------------------

# class CardController < ApplicationController
#   before_action :authenticate_user!
#   before_action :set_category_list
#   before_action :set_brand_list
#   before_action :set_payjp_secret_key, except: :new
#   require "payjp"

#   def new
#     card = Card.where(user_id: current_user.id)
#     redirect_to action: "show" if card.exists?
#   end

#   def pay #payjpとCardのデータベース作成を実施します。
#     if params['payjp-token'].blank?
#       redirect_to action: "new"
#     else
#       customer = Payjp::Customer.create(
#       description: '登録テスト', #なくてもOK
#       email: current_user.email, #なくてもOK
#       card: params['payjp-token'],
#       metadata: {user_id: current_user.id}
#       ) #念の為metadataにuser_idを入れましたがなくてもOK
#       @card = Card.new(user_id: current_user.id, customer_id: customer.id, card_id: customer.default_card)
#       if @card.save
#         redirect_to action: "show"
#       else
#         redirect_to action: "pay"
#       end
#     end
#   end

#   def delete #PayjpとCardデータベースを削除します
#     card = Card.where(user_id: current_user.id).first
#     if card.blank?
#     else
#       customer = Payjp::Customer.retrieve(card.customer_id)
#       customer.delete
#       card.delete
#     end
#       redirect_to action: "new"
#   end

#   def show #Cardのデータpayjpに送り情報を取り出します
#     card = Card.where(user_id: current_user.id).first
#     if card.blank?
#       redirect_to action: "new" 
#     else
#       customer = Payjp::Customer.retrieve(card.customer_id)
#       @default_card_information = customer.cards.retrieve(card.card_id)
#     end
#   end
  
# end