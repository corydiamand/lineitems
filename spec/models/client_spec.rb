# == Schema Information
#
# Table name: clients
#
#  id          :integer          not null, primary key
#  first_name  :string(255)
#  last_name   :string(255)
#  address     :string(255)
#  monthly_fee :decimal(, )
#  tax         :decimal(, )
#  charge_date :date
#  created_at  :datetime
#  updated_at  :datetime
#

require 'rails_helper'

RSpec.describe Client, :type => :model do


  	context 'validations' do
  		it "has a valid factory" do
  			expect(FactoryGirl.create(:client)).to be_valid
  		end

  		it "is invalid without a first name" do
  			expect(FactoryGirl.build(:client, first_name: nil)).to_not be_valid
  		end

  		it "is invalid without a last name" do
  			expect(FactoryGirl.build(:client, last_name: nil)).to_not be_valid
  		end
  	end

end
