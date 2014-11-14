require 'rails_helper'
include ControllerMacros

RSpec.describe InvoicesController, :type => :controller do

login_admin

	describe "GET show" do

	    it "assigns the requested client as @client" do
	      client = FactoryGirl.create(:client, :permalink => "permalink123", :page_visible => true)
	      get :show, {:permalink => client.permalink}
	    end
	    context "page_visible = true" do

		    it "shows client based off permalink" do
		    	client = FactoryGirl.create(:client, :permalink => "permalink123", :page_visible => true)
		    	get :show, {:permalink => client.permalink}
		    	expect(response).to render_template("show")	
		    end

		    it "shows client page by id if no permalink" do
		    	client = FactoryGirl.create(:client, :page_visible => true)
		    	get :show, {:permalink => client.id}
		    	expect(response).to render_template("show")
		    end

		    it "does not show client page by id if permalink exists" do
		    	client = FactoryGirl.create(:client, :permalink => "permalink123", :page_visible => true)
		    	get :show, {:permalink => client.id}
		    	expect(response).to redirect_to("/")
		    end
		end

		context "page_visible = false" do

			it "redirects to the homepage" do
				client = FactoryGirl.create(:client, :permalink => "permalink123", :page_visible => false)
				get :show, {:permalink => client.permalink}
				expect(response).to redirect_to("/")
			end

		end

	end

end
