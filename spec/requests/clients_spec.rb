require 'rails_helper'
#working with devise
include Warden::Test::Helpers
Warden.test_mode!

RSpec.describe "Clients", :type => :request do


	describe "GET /clients" do

		before :each do
			admin = FactoryGirl.create(:admin)
			post_via_redirect admin_session_path, 'admin[email]' => admin.email, 'admin[password]' => admin.password
		end

		it "works! (now write some real specs)" do
			get clients_path
			expect(subject).to render_template(:index)
			#expect(response.status).to eq(200)
		end
	end


end
