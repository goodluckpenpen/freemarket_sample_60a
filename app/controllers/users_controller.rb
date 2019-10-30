class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def create
    @user = User.new
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
    @item_selling = User.find_by(id:current_user.id).selling_items
  end

  def seller_trading
    @item_trading = User.find_by(id:current_user.id).trading_items
  end

  def seller_sold
    # @item_trading = User.find_by(id:current_user.id).sold_items
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end
end
