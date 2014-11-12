require 'rails_helper'
#working with devise
include Warden::Test::Helpers
Warden.test_mode!

RSpec.describe "Clients", :type => :request do

	user = FactoryGirl.create(:admin)
	login_as(user, :scope => :admin)

	describe "GET /clients" do
		it "works! (now write some real specs)" do
			get clients_path
			expect(response.status).to eq(200)
			#expect(response.status).to eq(302)
		end
	end
end
