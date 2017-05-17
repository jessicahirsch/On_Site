class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.find(params[:post_id])
    @post = Post.new
    @post.save
  end

  def create
    # @post = Post.find(params[:post_id])
    Post.create(title: params[:title],
            content: params[:content])
    #redirect_to post_path(@post)
    redirect_to :back
  end

  def upvote
    @post = Post.find(params[:id])
    @session = Session.find_by(:id => 1)
    @session = Session.find_by(id: @session)
    # @post.upvote
    # @post.upvote_from current_user
    # @session[:voting_id].to_i ||= create_unique_voting_id
    @post.upvote_by @session
    # (session_id: session["id"], user_id: current_user.id).first
    redirect_to :back
  end

  def downvote
    @post = Post.find(params[:id])
    @session = Session.find_by(:id => 1)
    @session = Session.find_by(id: @session)
    @post.downvote_by @session
    # @post.downvote
    # @post.downvote_from current_user
    redirect_to :back
  end

end
