class HarsController < ApplicationController

	def new
	end

	def create
		@har_file = HAR::Archive.from_file('test.har')

#		params[:uri] = har.uri
#		params[:pages] = har.pages
		#params[:entries] = har.entries.flatten.to_json
		params[:file] = @har_file.to_json

	  @har_file.pages.each do |page|
	    page = Page.new(startedDateTime: page.started_date_time,
	    	idx: page.id,
	    	title: page.title,
	    	#pageTimings: page.page_timings,
	    	comment: page.comment)
	   	page.save
	  end

		@har = Har.new(har_params)
		#@page = Pages.new(har.pages)

		@har.save
#		puts har
	end

	private
		def har_params
			params.permit(:uri, :pages, :entries, :file)
		end
end
