require 'rails_helper'
#working with devise
include Warden::Test::Helpers
Warden.test_mode!

RSpec.describe "Clients", :type => :request do

	admin = FactoryGirl.create(:admin, :email => "rando123@rando.com")
	login_as(admin, :scope => :admin)

	describe "GET /clients" do
		it "works! (now write some real specs)" do
			get clients_path
			expect(response.status).to eq(200)
			#expect(response.status).to eq(302)
		end
	end
end
