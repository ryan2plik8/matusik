class PdfController < ApplicationController

	def index
		
	end

	def create 
		u = User.find(params[:user_id])
		filename = "public/#{params[:document_url]}"
		pdf = Prawn::Document.generate("#{u.name}.pdf", :template => filename) do
			go_to_page(1)
			fill_color "ff0000"
			text "This pdf has been generated for #{u.name}", :align => :center
		end
		if pdf.nil?
			redirect_to new
		else
			redirect_to u
		end
	end

end