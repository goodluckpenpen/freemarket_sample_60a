class UsersController < ApplicationController

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
  end

  def profile
  end

  def seller_selling
  end

  def seller_trading
  end

  def seller_sold
  end

  private

  def user_params
    params.require(:user).permit(:name, :image)
  end
end
