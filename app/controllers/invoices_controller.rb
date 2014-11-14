class InvoicesController < ApplicationController
	def show
		if (params[:permalink] !~ /\D/) == true
			@client = Client.where(id: params[:permalink]).take
			if (@client.page_visible == false) || !@client.permalink.nil?
				redirect_to root_url, alert: "Invalid Url"
			end
		else
			@client = Client.where(permalink: params[:permalink]).take
			if @client.page_visible == false
				redirect_to root_url, alert: "Invalid Url"
			end
		end
		
	end
end
