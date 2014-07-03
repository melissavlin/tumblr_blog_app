class PostsController < ApplicationController
	before_action :set_post, only: [:show, :destroy]

  def index
  end

  def new
  	# @post = Post.new
  end

  def create
  	@post = Post.new(post_params)
  	@post.user = User.find(session[:user_id])
  	if @post.save
  		flash[:notice] = "You made a post!"
  		redirect_to @post.user
  	else
  		flash[:alert] = "There was a problem."
  		redirect_to new_post_path
  	end
  end

  def show
    @post = Post.find(params[:id])
    @new_comment = Comment.new
  end

  
  def edit
  end

  def destroy
  	if @post.delete
  		flash[:notice] = "Post was deleted."
  		redirect_to @post.user
  	else
  		flash[:alert] = "There was a problem."
  		redirect_to :back
  	end
  end


private

def post_params
	params.require(:post).permit(:body)
end

def set_post
	@post = Post.find(params[:id])
end

end