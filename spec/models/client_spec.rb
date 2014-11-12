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
#  permalink   :string(255)
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

      it "validates permalink uniqueness" do
        FactoryGirl.create(:client, permalink: "permalink123")
        expect(FactoryGirl.build(:client, permalink: "permalink123")).to_not be_valid
      end

      it "returns a first name" do
        client = FactoryGirl.build(:client)
        expect(client.first_name).to eq("John")
      end

      it "returns a last name" do
        client = FactoryGirl.build(:client)
        expect(client.last_name).to eq("Doe")
      end

      it "has an address attribute" do
        client = FactoryGirl.build(:client)
        expect(client.attributes.has_key?("address")).to eq(true)
      end

      it "has a monthly_fee attribute" do
        client = FactoryGirl.build(:client)
        expect(client.attributes.has_key?("monthly_fee")).to eq(true)
      end

      it "has a tax attribute" do
        client = FactoryGirl.build(:client)
        expect(client.attributes.has_key?("tax")).to eq(true)
      end

      it "has a charge date" do
        client = FactoryGirl.build(:client)
        expect(client.attributes.has_key?("charge_date")).to eq(true)
      end

      it "has a permalink attribute" do
        client = FactoryGirl.build(:client)
        expect(client.attributes.has_key?("permalink")).to eq(true)
      end

  	end

end
