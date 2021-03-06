class InvitesController < ApplicationController
  before_action :set_invite, only: [:show, :edit, :update, :destroy]

  # GET /invites
  # GET /invites.json
  def index
    @invites = Invite.all
    @user_for_invite = User.all
    @event_members = EventM.where(event_id: params[:event_id])
    @users_invited = Invite.where(event_id: params[:event_id])
  end

  def invite
    @invite = Invite.create!(invite_params)
    redirect_to event_path($cureent_event.id), notice: User.where(id:@invite.user_id).select('userName') + ' was successfully invited.'
  end

  # GET /invites/1
  # GET /invites/1.json
  def show
  end

  # GET /invites/new
  def new
    @invite = Invite.new
  end

  # GET /invites/1/edit
  def edit
  end

  # POST /invites
  # POST /invites.json
  def create
    @invite = Invite.create!(user_id:params[:user_id], event_id:params[:event_id])
    @invited =  User.where("id = ?", @invite.user_id).select('userName').to_s
    redirect_to event_invites_path, notice: 'Invite was sent to user'
  end

  # PATCH/PUT /invites/1
  # PATCH/PUT /invites/1.json
  def update
    respond_to do |format|
      if @invite.update(invite_params)
        format.html { redirect_to @invite, notice: 'Invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @invite }
      else
        format.html { render :edit }
        format.json { render json: @invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /invites/1
  # DELETE /invites/1.json
  def destroy
    @invite.destroy
    respond_to do |format|
      format.html { redirect_to invites_url, notice: 'Invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_invite
      @invite = Invite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def invite_params
      params.fetch(:invite, {}).permit(:user_id, :event_id)
    end
end
