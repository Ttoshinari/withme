class AllPostsController < ApplicationController

    def all_post



        @posts = Post.joins(:prefecture, :category).select("posts.*, prefectures.prefecture, categories.category")
    end
    
end
