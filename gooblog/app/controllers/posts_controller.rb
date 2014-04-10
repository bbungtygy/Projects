class PostsController < ApplicationController
  def index
    @posts = Post.paginate(:page => params[:page], :per_page => 30)
  end

  def create
    @post= Post.create(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:asset)
  end
end
