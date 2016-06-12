class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy, :finish_signup]

  def create
  	@profile = Profile.create(profile_params)
  	@profile.user_id = current_user.id

  	if @profile.save
  		redirect_to after_sign_in_path_for(@profile.user)
  	else
  		render :new
  	end
  end

  def edit
  	set_profile
  end

  def update
  	@profile.update(profile_params)

  	if @profile.save
  	  redirect_to profile_path
  	else
  	  render :edit
  	end
  end

  def show
  end

  def destroy
  	
  end

  private
  	def set_profile
  		@profile = current_user.profile
  		if @profile.nil?
  		  @profile = Profile.new(user: current_user)
  		end
  		@profile
  	end

  	def profile_params
  		params.require(:profile).permit(:id, :name, :avatar)
  	end
end
