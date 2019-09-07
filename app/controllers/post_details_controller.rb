class PostDetailsController < ApplicationController

    def post_detail



        @details = Post.joins(:user, :category, :prefecture).where(id: params[:id]).select("posts.*, categories.*, prefectures.*, users.*")

    end
    
end
