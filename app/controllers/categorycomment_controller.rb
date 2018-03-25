class CategorycommentController < ApplicationController
	before_action :authenticate_user!
  def new
  end

def create
params[:categorycomment][:category_id] = params[:category_id]
params[:categorycomment][:user_id] = current_user.id
@comment = Categorycomment.create(categorycomments_params)
if @comment.save
redirect_to category_path(params[:category_id])
else
	@comment.errors.full_messages.each do |msg|
		@msg=msg
end
flash[:notice] = "#{@msg}"
redirect_to post_path(params[:category_id])
end
end

private

def categorycomments_params
params.require(:categorycomment).permit(:user_id, :category_id, :text)
end


end