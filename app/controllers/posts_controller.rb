class PostsController < ApplicationController

  def show
    Post.find(params[:id])
    @post = Post.new(params[:post].permit(:name, :body, :topic_id))
    @post.save
    redirect_to topic_path(params[:post]['topic_id'])
  end

  def create
    @post = Post.new(params[:post].permit(:topic_id, :name, :body))
    @post.save
    redirect_to topic_path(params[:post]['topic_id'])
  end

end
