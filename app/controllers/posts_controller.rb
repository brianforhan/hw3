class PostsController < ApplicationController

    def show
        @post = Post.find(params["id"])
      end    

    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(params["post"])
        @post.save
        redirect_to "/places"
    end

end
