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
	validate  :permalink, :permalink_not_id

	after_initialize 'self.page_visible ||= false'
	#set to nil so that blank permalink doesn't lead to clients unless intended
	after_initialize 'self.permalink ||= nil'

	#so that permalinks will never get mixed up with an id
	private

		def permalink_not_id
			#regex checks if permalink contains only numbers
			if (self.permalink !~ /\D/) == true && self.permalink != nil
				errors.add(:permalink, "permalink can't be just numbers, add a letter")
			end
		end
end
