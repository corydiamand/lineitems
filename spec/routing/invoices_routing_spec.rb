require "rails_helper"

RSpec.describe InvoicesController, :type => :routing do
  describe "routing" do

    it "routes to #show from user id" do
      expect(:get => "/invoices/1").to route_to("invoices#show", :permalink => "1")
    end

    it "routes to #show from user permalink" do
      expect(:get => "/invoices/permalink123").to route_to("invoices#show", :permalink => "permalink123")
    end

  end
  
end
