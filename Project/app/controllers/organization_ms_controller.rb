class OrganizationMsController < ApplicationController
  before_action :set_organization_m, only: [:show, :edit, :update, :destroy]

  # GET /organization_ms
  # GET /organization_ms.json
  def index
    @organization_ms = OrganizationM.all
  end

  # GET /organization_ms/1
  # GET /organization_ms/1.json
  def show
    @organization_ms = OrganizationM.where(organization_id:params[:id])
  end

  # GET /organization_ms/new
  def new
    @organization_m = OrganizationM.new
  end

  # GET /organization_ms/1/edit
  def edit
  end

  # POST /organization_ms
  # POST /organization_ms.json
  def create
    @organization_m = OrganizationM.new(organization_m_params)

    respond_to do |format|
      if @organization_m.save
        format.html { redirect_to @organization_m, notice: 'Organization m was successfully created.' }
        format.json { render :show, status: :created, location: @organization_m }
      else
        format.html { render :new }
        format.json { render json: @organization_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /organization_ms/1
  # PATCH/PUT /organization_ms/1.json
  def update
    respond_to do |format|
      if @organization_m.update(organization_m_params)
        format.html { redirect_to @organization_m, notice: 'Organization m was successfully updated.' }
        format.json { render :show, status: :ok, location: @organization_m }
      else
        format.html { render :edit }
        format.json { render json: @organization_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /organization_ms/1
  # DELETE /organization_ms/1.json
  def destroy
    @organization = Organization.find(params[:id])
    @organization_m.destroy
    respond_to do |format|
      format.html { redirect_to @organization, notice: 'Organization m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization_m
      @organization_m = OrganizationM.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_m_params
      params.fetch(:organization_m, {})
    end
end
