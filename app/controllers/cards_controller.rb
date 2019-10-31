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
        flash[:alert] = 'クレジットカード登録に失敗しました'
      end
    end
  end

  # 後ほど削除機能を実装します。
  def destroy #PayjpとCardデータベースを削除します
    card = Card.where(user_id: current_user.id).first
    if card.blank?
    else
      Payjp.api_key = 'sk_test_9629ac740599209dbad72f1b'
      customer = Payjp::Customer.retrieve(card.customer_id)
      customer.delete
      card.delete
    end
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
