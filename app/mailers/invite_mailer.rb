class InviteMailer < ApplicationMailer
	require 'mailgun'

	# Change this
	default from: "postmaster@sandboxdb186207bc4648cb947c92d270219a9e.mailgun.org"
	# You will have to change this!!

	def meet_invite(invite)
		@invite = invite
		mail to: @invite.recipient,
		subject: "Parkpals invite"
	end

end
