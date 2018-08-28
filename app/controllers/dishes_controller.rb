class DishesController < ApplicationController
  before_action :find_dish, :only=>[:edit, :show, :update, :destroy]	

  def index
  	@course = Course.all.order("created_at ASC")
  end

  def show
    redirect_to edit_dish_path(@dish)
  end

  def new
  end

  def create
  	@dish = Dish.new(dish_params)
  	if @dish.save
  	  flash[:notice] = "Dish added successfully."	
  	  redirect_to dishes_path
      else
  	  flash[:error] = @dish.errors.full_messages.first
  	  redirect_to dishes_path
  	end
  end

  def edit
  end
 
  def update
    if @dish.update_attributes(dish_update_params)
      flash[:notice] = "Updated successfully."	
	  redirect_to dishes_path
    else
      render :edit
    end
  end

  def destroy
  	if @dish.destroy
  	  flash[:notice] = "Dish deleted successfully."	
  	  redirect_to dishes_path
      else
  	  flash[:error] = @dish.errors.full_messages.first
  	  redirect_to dishes_path
  	end
  end

  def dish_list
  	@course = Course.find_by(id: params[:id])
  	@dishes = @course.dishes
  end
	
  private

  def dish_params
	  params.require(:dish).permit(:image, :name, :description, :price, :course_id)
  end

  def dish_update_params
	  params.require(:dish).permit(:image, :name, :description, :price)
  end

  def find_dish
    @dish = Dish.find_by(id: params[:id])
    if @dish.present?
      return @dish
    else
  	  flash[:error] = "Dish doesn't exists."
  	  redirect_to dishes_path
	  end
  end
end
