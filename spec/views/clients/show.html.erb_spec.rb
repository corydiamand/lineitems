require 'rails_helper'

RSpec.describe "clients/show", :type => :view do
  before(:each) do
    @client = assign(:client, Client.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :monthly_fee => "9.99",
      :tax => "9.99",
      :charge_date =>"11-11-11",
      :permalink => "permalink123",
      :page_visible => "true"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/11-11-11/)
    expect(rendered).to match(/permalink123/)
    expect(rendered).to match(/true/)
  end
end
