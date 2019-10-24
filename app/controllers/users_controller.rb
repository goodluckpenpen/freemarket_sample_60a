class UsersController < ApplicationController

  def show
  end

  def create
  end

  def card_add_btn
  end

  def card_delete_btn
  end

  def card_input_info
  end

  def information
  end

  def logout
  end

  def mypage
  end

  def profile
  end

  def seller_selling
    @item_selling = User.find(1).selling_items
  end

  def seller_trading
    @item_trading = User.find(1).sold_items
  end

  def seller_sold
  end

end
