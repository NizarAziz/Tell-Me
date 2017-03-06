class HomeController < ApplicationController

	def index
		@user = User.new
	end

	def create
		@user = User.create(user_params)
		redirect_to users_path
	end

	private
  	def user_params
    	params.require(:user).permit(:first_name, :last_name, :email_address, :user_name)
  	end

end
