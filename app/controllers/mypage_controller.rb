class MypageController < ApplicationController
  def top
    @users = User.where(id: params[:id]).select("users.*")
    @posts = Post.where(user_id: params[:id]).select("posts.*")
    @postNumber = Post.where(user_id: params[:id]).count

  end

  def edit
  end
end
