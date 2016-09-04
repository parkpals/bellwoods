class InviteMailer < ApplicationMailer
	require 'mailgun'

	# Change this
	default from: "bookbuddies@sandboxdb186207bc4648cb947c92d270219a9e.mailgun.org"
	# You will have to change this!!

	def meet_invite(invite)
		@root_invite_url = "http://localhost:3000/invites/"

		@invite = invite
		@sender = invite.user.profile
		mail bcc: @invite.recipient,
		subject: "Parkpals invite"
	end

end
