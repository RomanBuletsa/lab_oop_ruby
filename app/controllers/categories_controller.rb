class CategoriesController < ApplicationController
before_action :authenticate_user!
before_action :set_category, only: [:edit, :update, :destroy, :show]


def show
	@comments = Category.where(category_id: @category.id)
end

def new
@category = Category.new
end

def create
@category = current_user.categories.build(category_params)
if @category.save
redirect_to root_path
else
render 'new'
end
end

def edit


end


def update
@category.update(category_params)
redirect_to root_path
end


def destroy
@category.destroy
redirect_to root_path

end



private

def category_params
params.require(:category).permit(:user_id, :title)
end


def set_category
@category = Category.find(params[:id])
end

end