class PostsController < ApplicationController

  def show
    Post.find(params[:id])
    @post = Post.new(post_params)
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to topic_path(@post.topic)
  end

  private
  def post_params
    params.require(:post).permit(:name, :body, :topic_id)
  end
end
