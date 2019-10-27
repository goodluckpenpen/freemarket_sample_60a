class CategoriesController < ApplicationController


  
  
  def index
    @parents = Category.all.order("id ASC").limit(13)
  end

  def show
    @parents = Category.all.order("id ASC").limit(13)
    @category = Category.find(params[:id])
    @groups = @category.children.order("RAND()").limit(9)
    

  end

  def self.parents
    @parents = Category.all.order("id ASC").limit(13)
  end


end
