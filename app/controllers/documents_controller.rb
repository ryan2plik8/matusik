class DocumentsController < ApplicationController

	def new
		@document = Document.new
	end

	def create
		@document = Document.create(params[:document])
		if @document.save
			redirect_to @document
		else
			redirect_to new_document
		end
	end

	def show
		@document = Document.find(params[:id])
	end

end
