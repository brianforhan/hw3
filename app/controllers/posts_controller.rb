class PostsController < ApplicationController

    def new
        @post = Post.new
        @post.place_id = params["id"]
    end
    
    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end

end
