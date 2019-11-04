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
private


    def post_params
        params.require(:post).permit(:prefecture_id, :category_id, :title, :content, :accept_number, :from_age, :to_age)

    end



end
