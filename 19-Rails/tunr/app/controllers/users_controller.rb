class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save 		# => true
			# here the user is valid
			redirect_to root_path		# back to the home page!
		else
			# here the user is invalid
			render :new					# reloads the page with everything they saved in @user already! :O
		end
	end

	private
	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end
end