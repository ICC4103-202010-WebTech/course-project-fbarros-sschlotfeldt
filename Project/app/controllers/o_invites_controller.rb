class OInvitesController < ApplicationController
  before_action :set_o_invite, only: [:show, :edit, :update, :destroy]

  # GET /o_invites
  # GET /o_invites.json
  def index
    @invites = OInvite.all
    @user_for_invite = User.all
    @organization_members = OrganizationM.where(organization_id: params[:organization_id])
    @users_invited = OInvite.where(organization_id: params[:organization_id])
  end

  def invite
    @invite = Invite.create!(invite_params)
    redirect_to event_path($cureent_event.id), notice: User.where(id:@invite.user_id).select('userName') + ' was successfully invited.'
  end

  # GET /o_invites/1
  # GET /o_invites/1.json
  def show
  end

  # GET /o_invites/new
  def new
    @o_invite = OInvite.new
  end

  # GET /o_invites/1/edit
  def edit
  end

  # POST /o_invites
  # POST /o_invites.json
  def create
    @o_invite = OInvite.create!(user_id:params[:user_id], organization_id:params[:organization_id])
    @invited =  User.where("id = ?", @o_invite.user_id).select('userName').to_s
    redirect_to organization_o_invites_path, notice: 'Invite was sent to user'
  end

  # PATCH/PUT /o_invites/1
  # PATCH/PUT /o_invites/1.json
  def update
    respond_to do |format|
      if @o_invite.update(o_invite_params)
        format.html { redirect_to @o_invite, notice: 'O invite was successfully updated.' }
        format.json { render :show, status: :ok, location: @o_invite }
      else
        format.html { render :edit }
        format.json { render json: @o_invite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /o_invites/1
  # DELETE /o_invites/1.json
  def destroy
    @o_invite.destroy
    respond_to do |format|
      format.html { redirect_to o_invites_url, notice: 'O invite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_o_invite
      @o_invite = OInvite.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def o_invite_params
      params.fetch(:o_invite, {})
    end
end
