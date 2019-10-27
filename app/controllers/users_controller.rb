class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def create
    @user = User.new
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
    # @parents = Category.all.order("id ASC").limit(13)
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

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end
end
