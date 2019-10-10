class AllPostsController < ApplicationController

    def all_post



        @posts = Post.joins(:prefecture, :category).select("posts.*, prefectures.prefecture, categories.category")
        @categories = Category.all
    end
    
    def search_prefecture
        
        @posts = Post.joins(:prefecture, :category).where(prefecture_id: params[:prefecture_id]).select("posts.*, prefectures.prefecture, categories.category")
        @categories = Category.all
        render 'all_post'
    end


    def search_category
    end

    def search_word
    end
    
end
