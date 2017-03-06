class UsersController < ApplicationController

	def index
		@user = User.all
	end

	def show
    @user = User.find(params[:id])
  	end

  	def edit
    @user = User.find(params[:id])
  	end

	def new
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to new_post_path
	end

	def update
    @user = User.find(params[:id])
    @user.update(params[:user].permit(:name, :email))
    end

	private
  	def user_params
    	params.require(:user).permit(:first_name, :last_name, :email_address, :user_name)
  	end

end