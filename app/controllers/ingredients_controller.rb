
class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end
  
  def create
    @ingredient = Ingredient.new(params[:ingredient])
    if @ingredient.save
      redirect_to @ingredient, notice: "New Ingredient Created"
    else
      render :new
    end
  end
  
  def update
    @ingredient = Ingredient.find(params[:id])
    if @post.update_attributes(params[:ingredient])
      redirect_to @ingredient, notice: "Ingredient updated"
    else render :edit
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy
  end
  
  
end
