class CategoriesController < ApplicationController


  
  
  def index
  end

  def show
    @category = Category.find(params[:id])
    @groups = @category.children.order("RAND()").limit(9)
    
    @items = Item.where(category_id:@category.subtree_ids)
    @items = Item.page(params[:page]).per(50)
    

  end

  

end
