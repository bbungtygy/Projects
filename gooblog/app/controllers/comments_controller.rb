class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def create
    @comment = Comment.create(comment_params)

    if @comment.save
      redirect_to @comment.post
    else
      render 'new'
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
      redirect_to @comment.post
    else
      render 'edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])

    @comment.destroy
    redirect_to @comment.post 
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :content, :post_id)
  end
end
