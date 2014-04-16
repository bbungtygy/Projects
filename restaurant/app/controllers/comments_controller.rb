class CommentsController < ApplicationController
  def index
    @comments = Comments.all
  end

  def create
    @comment = Comment.create(comment_params)

    if @comment.save
      redirect_to @comment.shop
    else
      render 'edit'
    end
  end

  def new
    @comment = Comment.new
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
      redirect_to @comment.shop
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    redirect_to @comment.shop
  end

  private
  def comment_params
    params.require(:comment).permit(:shop_id, :commenter, :content)
  end
end
