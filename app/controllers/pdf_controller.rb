class PdfController < ApplicationController

	def index
		
	end

	def create 
		u = User.find(params[:user_id])
		filename = "public/#{params[:document_url]}"
		licence = params[:licence][:licence_ids]
		licence.each do |l|
			Prawn::Document.generate("#{l}.pdf", :template => filename) do
				go_to_page(1)
				fill_color "ff0000"
				text "This pdf has been generated for #{l}", :align => :center
			end
		end
		redirect_to u
	end

end