require 'rails_helper'

RSpec.describe "clients/index", :type => :view do
  before(:each) do
    assign(:clients, [
      create(
        :client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :monthly_fee => "9.99",
        :tax => "9.98",
        :charge_date =>"2011/11/11",
        :permalink => "permalink123",
        :page_visible => true
      ),
      create(
        :client,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :monthly_fee => "9.99",
        :tax => "9.98",
        :charge_date =>"2011/11/11",
        :permalink => "permalink1234",
        :page_visible => true
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.98".to_s, :count => 2
    assert_select "tr>td", :text => "2011-11-11".to_s, :count => 2
    assert_select "tr>td", :text => "permalink123".to_s, :count => 1
    assert_select "tr>td", :text => "permalink1234".to_s, :count => 1
    assert_select "tr>td", :text => "true".to_s, :count => 2
  end
end
