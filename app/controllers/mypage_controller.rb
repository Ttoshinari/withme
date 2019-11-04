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
    #ログインユーザーのIDをdevice導入後に変更する
    @post = Post.find(params[:postId])
    @post.destroy

    @users = User.where(id: params[:userId]).select("users.*")
    @posts = Post.where(user_id: params[:userId]).select("posts.*")
    @postNumber = Post.where(user_id: params[:userId]).count
    render :top

  end

  def postEdit
    @posts = Post.find(params[:postId])
    
    

end 

def update
  #ログインユーザーのIDをdevice導入後に変更する
    @posts = Post.find(params[:post][:id])
    if @posts.update(update_params)
 
      @users = User.where(id: params[:post][:user_id]).select("users.*")
      @posts = Post.where(user_id: params[:post][:user_id]).select("posts.*")
      @postNumber = Post.where(user_id: params[:post][:user_id]).count
      render :top
    else
        @posts.errors.full_messages
        @posts = Post.find(params[:post][:id])
        
        render :postEdit
    end
end

def update_params

  params.require(:post).permit(:prefecture_id, :category_id, :title, :content, :accept_number, :from_age, :to_age, :id, :user_id, :created_at)

end
end
