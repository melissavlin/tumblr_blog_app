class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def show
  	@post = Post.find(params[:id])
    @new_comment = Comment.new
  end

  def destroy
  end
end
