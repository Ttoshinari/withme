class MypageController < ApplicationController
  def top
    @users = User.where(id: params[:id]).select("users.*")
    @posts = Post.where(user_id: params[:id]).select("posts.*")
    @postNumber = Post.where(user_id: params[:id]).count

  end

  def edit
    @users = User.where(id: params[:id]).select("users.*")
  end

  def delete
    @post = Post.find(params[:id])
    @post.destroy

    @users = User.where(id: params[:userId]).select("users.*")
    @posts = Post.where(user_id: params[:userId]).select("posts.*")
    @postNumber = Post.where(user_id: params[:userId]).count
    render :top

  end
end
