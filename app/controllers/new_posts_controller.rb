class NewPostsController < ApplicationController

    def new_post

        @posts = Post.new


    end


    def send_post
        @posts = Post.new(post_params)
        if @posts.save
            redirect_to root_path 
        else
            @posts.errors.full_messages
            render :new_post
        end
        

        
    end

    def postEdit

        @posts = Post.find(params[:postId])
        


    end 
    
    def update
require 'pry'
        @posts = Post.new(post_params)
        binding.pry

    end
private


    def post_params
        params.require(:post).permit(:prefecture_id, :category_id, :title, :content, :accept_number, :from_age, :to_age)
        #paramsに既存user_id、既存postのid、既存created_at, 新規updated_atを渡してあげるようにする

    end



end
