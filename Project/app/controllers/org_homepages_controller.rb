class OrgHomepagesController < ApplicationController
  before_action :set_org_homepage, only: [:show, :edit, :update, :destroy]

  # GET /org_homepages
  # GET /org_homepages.json
  def index
    @org_homepages = OrgHomepage.all
  end

  # GET /org_homepages/1
  # GET /org_homepages/1.json
  def show
    @current_oh= OrgHomepage.where(id:params[:id])
  @org_members=User.joins(:organizationMs).where("organization_id = ?", @current_oh[0].organization_id)
    @o_events = Event.where("organization_id = ? ", @current_oh[0].organization_id)
  end

  # GET /org_homepages/new
  def new
    @org_homepage = OrgHomepage.new
  end

  # GET /org_homepages/1/edit
  def edit
    @oh=OrgHomepage.where(id:params[:id])
  end

  # POST /org_homepages
  # POST /org_homepages.json
  def create
    @org_homepage = OrgHomepage.new(org_homepage_params)

    respond_to do |format|
      if @org_homepage.save
        format.html { redirect_to @org_homepage, notice: 'Org homepage was successfully created.' }
        format.json { render :show, status: :created, location: @org_homepage }
      else
        format.html { render :new }
        format.json { render json: @org_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /org_homepages/1
  # PATCH/PUT /org_homepages/1.json
  def update
    respond_to do |format|
      if @org_homepage.update(org_homepage_params)
        format.html { redirect_to @org_homepage, notice: 'Org homepage was successfully updated.' }
        format.json { render :show, status: :ok, location: @org_homepage }
      else
        format.html { render :edit }
        format.json { render json: @org_homepage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /org_homepages/1
  # DELETE /org_homepages/1.json
  def destroy
    @org_homepage.destroy
    respond_to do |format|
      format.html { redirect_to org_homepages_url, notice: 'Org homepage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_org_homepage
      @org_homepage = OrgHomepage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def org_homepage_params
      params.fetch(:org_homepage, {}).permit(:name, :banner, :description, :flyer, organizations_attributes: [:name,:user_id])
    end
end
