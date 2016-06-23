class InvitesController < ApplicationController
  before_action :set_invite, only: [:show]

  def index
  end

  def new
    @invite = Invite.new
    @invite_id = SecureRandom.random_number(1_000_000_000)
  end

  def create
  	@invite = Invite.create(invite_params)
    @invite.user_id = current_user.id
  	if @invite.save
      InviteMailer.meet_invite(@invite, joins_path(:invite_token => @invite.token)).deliver
      flash[:notice] = "Email sent!"
        redirect_to invites_path
    else
      render :new
    end
  end

  def show
  end

private
	
	def set_invite
		@invite = Invite.find(params[:id])
	end

	def invite_params
		params.require(:invite).permit(:id, :message, :recipient, :user_id)
	end
  
end
