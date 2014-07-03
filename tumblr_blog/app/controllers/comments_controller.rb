class CommentsController < ApplicationController

  def index
  end

  def new

  end

  def create
  	@comment = Comment.new(comment_params)
  	@comment.post = Post.find(params[:post_id])

  	# @comment.post = Post.find(params[:post_id])
  	@comment.user = User.find(session[:user_id])
  	# @comment.post = 
  	if @comment.save
  		flash[:notice] = "Thank you for your comment."
  		redirect_to @comment.post
  	else
  		flash[:alert] = "There was a problem posting your comment."
  		redirect_to new_post_path
  	end
  end

  def show
  	@comment = Comment.find(params[:id])
  end

  def destroy
  end

private
def comment_params
	params.require(:comment).permit(:body)
end


end
