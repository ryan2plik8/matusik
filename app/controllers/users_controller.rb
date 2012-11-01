class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
		@documents = Document.all
	end

	def new
		@user = User.new()
	end

	def create
		@user = User.create(params[:user])
		if @user.save
			redirect_to @user
		else
			redirect_to new
		end
	end
end
