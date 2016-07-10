class InvitesController < ApplicationController
  before_action :set_invite, only: [:show]

  def index
    @invites = Invite.where(user_id: current_user.id).order(created_at: :desc)
  end

  def new
    @invite = Invite.new
    @invite_id = SecureRandom.random_number(1_000_000_000)
  end

  def create
  	@invite = Invite.create(invite_params)
    @invite.user_id = current_user.id
  	if @invite.save
      InviteMailer.meet_invite(@invite).deliver
      flash[:notice] = "Email sent!"
      InviteDestroyWorker.perform_in(4.hours, @invite)
        redirect_to invite_path(@invite)
    else
      render :new
      render text: "Uh oh! An error!"
    end
  end

  def show
  end

  def destroy
    Invite.where(invite_id: @invite.id).destroy
    redirect_to invites_path, notice: 'Invite has been destroyed'
  end

private
	
	def set_invite
		@invite = Invite.find(params[:id])
	end

	def invite_params
		params.require(:invite).permit(:id, :message, :recipient, :user_id)
	end
  
end
