class InviteDestroyWorker
  include Sidekiq::Worker

  def perform(invite_id)
    Invite.where(invite_id: @invite.id).destroy
  end
end