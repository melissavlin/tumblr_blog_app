class CommentsController < ApplicationController


  def index
  end

  def new
  end

  def create
  	@comment = Comment.new(comment_params)
  	@comment.user = User.find(session[:user_id])
  	if @comment.save
  		flash[:notice] = "Thank you for your comment."
  		redirect_to post_path
  	else
  		flash[:alert] = "There was a problem posting your comment."
  		redirect_to post_path
  	end
  end

  def show
  end

  def destroy
  end

private
def comment_params
	params.require(:comment).permit(:body)
end


end
