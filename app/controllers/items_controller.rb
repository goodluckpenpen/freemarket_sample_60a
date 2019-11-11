class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @items = Item.all

    @ladys_category = Category.find(1)
    @mens_category = Category.find(2)
    @elecs_category = Category.find(8)
    @hobys_category = Category.find(6)

    # @category = Category.find(params[:id])
    # Post.where(category_id: @category.subtree_ids)

    @ladys = Item.where(category_id:@ladys_category.subtree_ids).limit(10).order("created_at DESC")
    @mens = Item.where(category_id:@mens_category.subtree_ids).limit(10).order("created_at DESC")
    @elecs = Item.where(category_id:@elecs_category.subtree_ids).limit(10).order("created_at DESC")
    @hobys = Item.where(category_id:@hobys_category.subtree_ids).limit(10).order("created_at DESC")
    @chanels = Item.where(brand_id:1).order('id DESC').limit(10)
    @vuittons = Item.where(brand_id:3).order('id DESC').limit(10)
    @supremes = Item.where(brand_id:4).order('id DESC').limit(10)
    @nikes = Item.where(brand_id:2).order('id DESC').limit(10)
  end

  def search
    if params[:l_cat]
      @m_cat = Category.find(params[:l_cat]).children
    elsif params[:m_cat]
      @s_cat = Category.find(params[:m_cat]).children
    elsif params[:size]
      @size = Size.where(params[:size])
    else 
      @deliver = DeliveryMethod.where(params[:deliver])
    end
    respond_to do |format|
      format.html
      format.json 
    end
  end

  def show
    # @parents = Category.all.order("id ASC").limit(13)
    @item = Item.find(params[:id])
    @users = @item.user.items.order("created_at DESC").limit(6)
    @brands = @item.brand.items.order("created_at DESC").limit(6)
  end

  def new
    @item = Item.new
    @item.images.build
    # gon.item = @item
    # gon.images = @item.images

    # # @item.item_imagse.image_urlをバイナリーデータにしてビューで表示できるようにする
    # require 'base64'
    # require 'aws-sdk'

    # gon.images_binary_datas = []
    # if Rails.env.production?
    #   client = Aws::S3::Client.new(
    #                          region: 'ap-northeast-1',
    #                          access_key_id: Rails.application.credentials.aws[:access_key_id],
    #                          secret_access_key: Rails.application.credentials.aws[:secret_access_key],
    #                          )
    #   @item.images.each do |image|
    #     binary_data = client.get_object(bucket: 'freemarket-sample-60a', key: image.image_url.file.path).body.read
    #     gon.images_binary_datas << Base64.strict_encode64(binary_data)
    #   end
    # else
    #   @item.images.each do |image|
    #     binary_data = File.read(image.image_url.file.file)
    #     gon.images_binary_datas << Base64.strict_encode64(binary_data)
    #   end
    # end
  end
  
  def create
    @item = Item.new(item_params)
    # binding.pry
    # @parents = Category.all.order("id ASC").limit(13)
    # if @item.save
    #   redirect_to @user
    # else 
    #   render :new
    # end
    # binding.pry
  end


  def purchase
  end

  def select
    @item = Item.find(params[:id])
  end

  def bought
  end 

  def destroy
    @item = Item.find(params[:id])
    @item.destroy 
    redirect_to controller: 'users',action: 'seller_selling'
  end

  # def update
  #   # ブランド名がstringでparamsに入ってくるので、id番号に書き換え
  #   if  brand = Brand.find_by(name: params[:item][:brand_id])
  #     params[:item][:brand_id] = brand.id
  #   else
  #     params[:item][:brand_id] = Brand.create(name: params[:item][:brand_id]).id
  #   end

  #   @item = Item.find(params[:id])

  #   # 登録済画像のidの配列を生成
  #   ids = @item.images.map{|image| image.id }
  #   # 登録済画像のうち、編集後もまだ残っている画像のidの配列を生成(文字列から数値に変換)
  #   exist_ids = registered_image_params[:ids].map(&:to_i)
  #   # 登録済画像が残っていない場合(配列に０が格納されている)、配列を空にする
  #   exist_ids.clear if exist_ids[0] == 0

  #   if (exist_ids.length != 0 || new_image_params[:images][0] != " ") && @item.update(item_params)

  #     # 登録済画像のうち削除ボタンをおした画像を削除
  #     unless ids.length == exist_ids.length
  #       # 削除する画像のidの配列を生成
  #       delete_ids = ids - exist_ids
  #       delete_ids.each do |id|
  #         @item.item_images.find(id).destroy
  #       end
  #     end

  #     # 新規登録画像があればcreate
  #     unless new_image_params[:images][0] == " "
  #       new_image_params[:images].each do |image|
  #         @item.images.create(image_url: image, item_id: @item.id)
  #       end
  #     end

  #     flash[:notice] = '編集が完了しました'
  #     redirect_to item_path(@item), data: {turbolinks: false}

  #   else
  #     flash[:alert] = '未入力項目があります'
  #     redirect_back(fallback_location: root_path)
  #   end

  # end


  private
  def item_params
    params.require(:item).permit(:title, :text, :category_id, :size_id, :brand_id, :condition_id, :delivery_fee_id, :delivery_method_id, :delivery_area_id, :delivery_day_id, :price, images_attributes: [ :image, :id, :item_id]).merge(seller_id: current_user.id, user_id: current_user.id)
  end

  def registered_image_params
    params.require(:registered_images_ids).permit({ids: []})
  end

  def new_image_params
    params.require(:new_images).permit({images: []})
  end

end