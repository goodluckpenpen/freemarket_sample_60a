class ItemsController < ApplicationController
  
  def index

    # @ladys_category = 
    # @mens_category = 
    # @elecs_category = 
    # @hobys_category = 

    
    @ladys = Item.where(category_id:1).order('id DESC').limit(10)
    @mens = Item.where(category_id:2).order('id DESC').limit(10)
    @elecs = Item.where(category_id:8).order('id DESC').limit(10)
    @hobys = Item.where(category_id:6).order('id DESC').limit(10)
    @chanels = Item.where(brand_id:1).order('id DESC').limit(10)
    @vuittons = Item.where(brand_id:3).order('id DESC').limit(10)
    @supremes = Item.where(brand_id:4).order('id DESC').limit(10)
    @nikes = Item.where(brand_id:2).order('id DESC').limit(10)

    # @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    # @parents = Category.all.order("id ASC").limit(13)
    @item = Item.find(params[:id])
    @users = @item.user.items.order("created_at DESC").limit(6)
    @brands = @item.brand.items.order("created_at DESC").limit(6)
  end

  def select
  end

  def buy
  end

end