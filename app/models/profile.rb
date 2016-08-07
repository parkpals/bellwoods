class Profile < ActiveRecord::Base
	validates :name, presence: true

	belongs_to :user
	
	has_attached_file :avatar, :default_url => 'avatar.jpg', styles: { medium: "250x250#", thumb: "150x150#" }
	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def full_name
		self.first_name.to_s + self.last_name.to_s
	end
end
