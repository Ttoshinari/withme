class AllPostsController < ApplicationController

    def all_post



        @posts = Post.joins(:prefecture, :category).select("posts.*, prefectures.prefecture, categories.category")
        @categories = Category.all
    end

    def show
        @posts = Post.joins(:prefecture, :category).where(id: params[:prefecture_id]).select("posts.*, prefectures.prefecture, categories.category")
    end
    
end
