class Invite < ActiveRecord::Base

	validates :recipient, presence: true
	validates_format_of :recipient,:with => Devise::email_regexp
	validates :message, presence: true
	validates :latitude, presence: true
	validates :longitude, presence: true

	belongs_to :user

	def expires_in
		expire_time = self.expire_time
		((expire_time.hours.since self.created_at) - Time.now)
	end

  def email_to_arr
    self.recipient.split(/[,\s]+/)
  end

end
