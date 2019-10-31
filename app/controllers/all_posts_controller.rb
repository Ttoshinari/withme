class AllPostsController < ApplicationController

    def all_post



        @posts = Post.joins(:prefecture, :category).select("posts.*, prefectures.prefecture, categories.category").order(id: :desc)
        @categories = Category.all
    end
    
    def search_prefecture
        
        @posts = Post.joins(:prefecture, :category).where(prefecture_id: params[:prefecture_id]).select("posts.*, prefectures.prefecture, categories.category")
        @categories = Category.all
        render 'all_post'
    end


    def search_category
        @posts = Post.joins(:prefecture, :category).where(category_id: params[:category_id]).select("posts.*, prefectures.prefecture, categories.category")
        @categories = Category.all
        render 'all_post'
    end

    def search_word
        @posts = Post.search_w(params[:sitem])
        @categories = Category.all
        render 'all_post'
    end
    
end
