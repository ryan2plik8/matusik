class LicencesController < ApplicationController

	def new
		@user = User.find(params[:user_id])
		@licence = @user.licences.new
	end

	def create 
		@user = User.find(params[:user_id])
		@licence = @user.licences.create(params[:licence])
		if @licence.save
			redirect_to @user
		else
			redirect_to @licence
		end
	end

end
