require 'rails_helper'
include RequestMacros


RSpec.describe "Clients", :type => :request do

	ENV["RAILS_ENV"] ||= 'test'

	describe "GET /clients" do
		it "works! (now write some real specs)" do
			get clients_path
			#expect(response.status).to eq(200)
			expect(response.status).to eq(302)
		end
	end
end
