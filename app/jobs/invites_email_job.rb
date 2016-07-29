class InvitesEmailJob
  include SuckerPunch::Job

  # The perform method is in charge of our code execution when enqueued.
  def perform(invite)
    InviteMailer.meet_invite(invite).deliver_now
  end

end