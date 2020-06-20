class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :photos, :videos, :files]
  # GET /events
  # GET /events.json
  #

  def photos
    if params[:photos] != nil
      @event.photos.attach(params[:photos])
      @event.save
    end
  end

  def videos
    if params[:videos] != nil
      @event.videos.attach(params[:videos])
      @event.save
    end
  end

  def files
    if params[:files] != nil
      @event.files.attach(params[:files])
      @event.save
    end
  end

  def index
    @events = Event.search(params[:search])
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @mem=[]
    @event_users= User.all
    @event_members= EventM.all
    @event = Event.where(id:params[:id])
    @event_o = Organization.all
    @event_v = Venue.all
    @votes = Vote.where(event_id:params[:id])
    $cureent_event=Event.find(params[:id])
  end

  # GET /events/new
  def new
    @event = Event.new
    @event.user_id = $current_user[0].id
    @event.organization_id = Organization.find(1).id
    @venues = Venue.all
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
      @event = Event.new(event_params)

      respond_to do |format|
        if @event.save!
          format.html { redirect_to @event, notice: 'Event was successfully created.' }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.fetch(:event, {}).permit(:e_name, :user_id, :venue_id, :organization_id, :e_description, :visibility, :event_pic, :ad, videos:[], photos:[], files:[], venues_attributes: [:id])
    end
end
