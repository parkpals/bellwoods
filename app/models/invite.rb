class Invite < ActiveRecord::Base

	validates :recipient, presence: true

	belongs_to :user

	def expires_in
		((4.hours.since self.created_at) - Time.now)
	end

end
