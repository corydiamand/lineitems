require 'rails_helper'

RSpec.describe "clients/new", :type => :view do
  before(:each) do
    assign(:client, Client.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :monthly_fee => "9.99",
      :tax => "9.99"
    ))
  end

  it "renders new client form" do
    render

    assert_select "form[action=?][method=?]", clients_path, "post" do

      assert_select "input#client_first_name[name=?]", "client[first_name]"

      assert_select "input#client_last_name[name=?]", "client[last_name]"

      assert_select "input#client_address[name=?]", "client[address]"

      assert_select "input#client_monthly_fee[name=?]", "client[monthly_fee]"

      assert_select "input#client_tax[name=?]", "client[tax]"
    end
  end
end
