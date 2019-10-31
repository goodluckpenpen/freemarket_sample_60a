class PurchasesController < ApplicationController
  require 'payjp'
  # before_action :set_item

  def show
    @item = Item.find(params[:id])
    card = Card.where(user_id: current_user.id).first
    if card.blank?
      redirect_to controller: "cards", action: "show"
    else
      Payjp.api_key = "sk_test_9629ac740599209dbad72f1b"
      customer = Payjp::Customer.retrieve(card.customer_id)
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def pay
    @item = Item.find(params[:item_id])
    price = @item.price
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = "sk_test_9629ac740599209dbad72f1b"
    Payjp::Charge.create(
    amount: @item.price,
    customer: card.customer_id,
    currency: 'jpy',
    )
    @item.update(buyer_id: current_user.id)
    redirect_to action: 'buy'
    # else
    #   flash[:alert] = '購入に失敗しました。'
    #   redirect_to controller:'purchases', action: 'show'
    # end 
  end

  def buy
    @item = Item.find(params[:item_id])
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = "sk_test_9629ac740599209dbad72f1b"
    customer = Payjp::Customer.retrieve(card.customer_id)
    @default_card_information = customer.cards.retrieve(card.card_id)
  end

  
  # private 
  #   def set_item
  #     @item = Item.find(params[:id])
  #   end

end
