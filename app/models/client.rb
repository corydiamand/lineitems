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

class Client < ActiveRecord::Base
	validates :first_name, :last_name, presence: true
	validates :permalink, uniqueness: {allow_blank: true}
end
