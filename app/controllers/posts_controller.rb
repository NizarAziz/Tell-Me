class PostsController < ApplicationController

	def index
		@post = Post.all
	end

	def new
		@user = User.all
		@post = Post.new
	end

	def create
		@post = Post.create(post_params)
		redirect_to "http://localhost:3000/posts"
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
    	@post.update(post_params)
      	redirect_to "http://localhost:3000/posts"
	end

	def show
		@post = Post.find(params[:id])
	end

  	def destroy
	    Post.find(params[:id]).destroy
	    redirect_to "http://localhost:3000/posts"
  	end





	private
  	def post_params
		params.require(:post).permit(:user_id, :message, :address, :website, :favorite_dish, :name)
  	end

end