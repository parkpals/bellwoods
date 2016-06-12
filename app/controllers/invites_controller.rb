class InvitesController < ApplicationController
  before_action :set_invite, only: [:show]



  def index
  end

  def new
  	@invite = Invite.new
  end

  def create
  	@invite = Invite.create(invite_params)
  	if @invite.save
	      redirect_to invite_path(@invite)
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
		params.require(:invite).permit(:id, :message, :recipient)
	end

	def randomize_id
	  begin
	    self.id = SecureRandom.random_number(1_000)
	  end while Invite.where(id: self.id).exists?
	end
  
end
