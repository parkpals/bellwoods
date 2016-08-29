class Profile < ActiveRecord::Base
	validates :first_name, presence: true
	validates :last_name, presence: true

	belongs_to :user
	
	has_attached_file :avatar, 
		:default_url => 'avatar_marker.jpg', 
		styles: { 
			medium: "250x250#", 
			thumb: "150x150#", 
			marker: "55x55#" }

	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

	def full_name
		self.first_name.to_s + " " + self.last_name.to_s
	end

	def abrev_name
		last_init = self.last_name[0,1]
		self.first_name.to_s + " " + last_init
	end
end
