class InviteMailer < ApplicationMailer
	require 'mailgun'

	# Change this
	default from: "hamillrobin@gmail.com"

	def meet_invite(invite)
		@invite = invite
		mail  to: @invite.email,
					subject: 'Parkpals invite'
	end

end
