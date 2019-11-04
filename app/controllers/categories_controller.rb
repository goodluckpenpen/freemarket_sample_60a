class CategoriesController < ApplicationController


  
  
  def index
  end

  def show
    @category = Category.find(params[:id])
    @groups = @category.children.order("RAND()").limit(9)
    
    @child = Category.find(params[:id])
    @granchild = Category.find(params[:id])
    
    @items = Item.where(category_id:@category.subtree_ids).page(params[:page]).per(50)
  end

  

end
