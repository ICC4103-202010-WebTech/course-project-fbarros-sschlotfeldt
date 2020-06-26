class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.search(params[:search])
    @user=User.all
  end

  def join_organization
    OrganizationM.create!(organization_id: params[:id],user_id: current_user.id)
    redirect_to organization_path(params[:id]), notice: 'You have joined the organization successfully'
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
    @organization_users= User.all
    @org_members=OrganizationM.all
    @o_events = Event.where("organization_id = ?", params[:id])
    $current_organization = Organization.find(params[:id])
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
    @organization.user_id = current_user.id

  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params)

    respond_to do |format|
      if @organization.save!
        format.html { redirect_to @organization, notice: 'Organization was successfully created.' }
        format.json { render :show, status: :created, location: @organization }
      else
        format.html { render :new }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
    OrganizationM.create!(user_id: current_user.id, organization_id:@organization.id)
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to @organization, notice: 'Organization was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization }
      else
        format.html { render :edit }
        format.json { render json: @organization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_organization
    begin
      @organization = Organization.find(params[:id])
    rescue
    end
  end

  # Only allow a list of trusted parameters through.
  def organization_params
    params.require(:organization).permit(:o_name, :user_id, :search, :o_description, :flyer )
  end
end
