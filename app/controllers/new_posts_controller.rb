class NewPostsController < ApplicationController

    def new_post

        @posts = Post.new
        @areas = Area.new
        @prefectures = Prefecture.all


    end


    def send_post


        @Post = Post.new(post_params)

        if @Post.save
            redirect_to root_path 
        else
            @error_message = 'タイトル、本文は入力してください!'
            redirect_to new_post_path
        end
        

        
    end
private


    def post_params

        params.require(:post).permit(:prefecture_id, :category_id, :title, :content, :accept_number, :from_age, :to_age)

        
    end



end
