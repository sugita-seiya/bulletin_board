class TopicsController < ApplicationController
  def index
    @topics = Topic.all
    @newTopic = Topic.new
  end

  def show
    @topic = Topic.find(params[:id])
    @newpost = Post.new(:topic_id => params[:id])
    @posts = Post.where(topic_id: params[:id])
  end

  def create
    @topic = Topic.new(params[:topic].permit(:title))
    @topic.save
    redirect_to root_path
  end

  def search
    @topics =Topic.search(params[:keyword])
  end

end
