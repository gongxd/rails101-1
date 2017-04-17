class Account::PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = current_user.posts
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path, alert: "Group deleted"
  end
end
