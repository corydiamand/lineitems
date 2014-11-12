require 'rails_helper'

RSpec.describe "clients/edit", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :monthly_fee => "9.99",
      :tax => "9.99",
      :charge_date => "11-11-11",
      :permalink => "permalink123"
    ))
  end

  it "renders the edit client form" do
    render

    assert_select "form[action=?][method=?]", client_path(@client), "post" do

      assert_select "input#client_first_name[name=?]", "client[first_name]"

      assert_select "input#client_last_name[name=?]", "client[last_name]"

      assert_select "input#client_address[name=?]", "client[address]"

      assert_select "input#client_monthly_fee[name=?]", "client[monthly_fee]"

      assert_select "input#client_tax[name=?]", "client[tax]"

      #checking all 3 parts of charge_date select
      assert_select "select#client_charge_date_1i[name=?]", "client[charge_date(1i)]"
      assert_select "select#client_charge_date_2i[name=?]", "client[charge_date(2i)]"
      assert_select "select#client_charge_date_3i[name=?]", "client[charge_date(3i)]"

      assert_select "input#client_permalink[name=?]", "client[permalink]"
    end
  end
end
