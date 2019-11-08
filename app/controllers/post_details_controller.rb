class PostDetailsController < ApplicationController

    def post_detail



        @details = Post.joins(:category, :prefecture).where(id: params[:id]).select("posts.*, categories.*, prefectures.*")

    end
    
end
