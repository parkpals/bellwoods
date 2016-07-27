class Invite < ActiveRecord::Base

	validates :recipient, presence: true

	belongs_to :user

end
