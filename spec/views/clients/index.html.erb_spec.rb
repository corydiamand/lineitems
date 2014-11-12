require 'rails_helper'

RSpec.describe "clients/index", :type => :view do
  before(:each) do
    assign(:clients, [
      Client.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :monthly_fee => "9.99",
        :tax => "9.99"
      ),
      Client.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :monthly_fee => "9.99",
        :tax => "9.99"
      )
    ])
  end

  it "renders a list of clients" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 4
  end
end
