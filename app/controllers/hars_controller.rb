class HarsController < ApplicationController

	def new
	end

	def create
		har = HAR::Archive.from_file('test.har')

#		params[:uri] = har.uri
#		params[:pages] = har.pages
		#params[:entries] = har.entries.flatten.to_json
		params[:file] = har.to_json

		@har = Har.new(har_params)
		@page = Pages.new(har.pages)

		@har.save
#		puts har
	end

	private
		def har_params
			params.permit(:uri, :pages, :entries, :file)
		end
end
