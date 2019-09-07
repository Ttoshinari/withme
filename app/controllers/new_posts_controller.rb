class NewPostsController < ApplicationController

    def new_post

        @posts = Post.new
        @areas = Area.new
        @prefectures = Prefecture.all


    end


    def send_post

        @Post = Post.new(post_params)

        @Post.save!

        redirect_to root_path
    end
private


    def post_params

        params.require(:post).permit(:prefecture_id, :category_id, :title, :content, :accept_number, :from_age, :to_age)

        
    end



end
