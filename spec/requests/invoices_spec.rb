require 'rails_helper'
#working with devise
include Warden::Test::Helpers
Warden.test_mode!

RSpec.describe "Invoices", :type => :request do



	describe "GET /invoices/id" do


		it "works! (now write some real specs)" do
			FactoryGirl.create(:client, :permalink => "permalink123", :page_visible => true)
			get('/invoices/permalink123')
			expect(response.status).to eq(200)
		end
	end

	describe "GET /invoices/permalink" do

		it "works! (now write some real specs)" do
			client = FactoryGirl.create(:client, :page_visible => true)
			get('/invoices/'+client.id.to_s)
			expect(response.status).to eq(200)
		end
	end


end