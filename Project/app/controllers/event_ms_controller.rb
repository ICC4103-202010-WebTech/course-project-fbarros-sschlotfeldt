class EventMsController < ApplicationController
  before_action :set_event_m, only: [:show, :edit, :update, :destroy]

  # GET /event_ms
  # GET /event_ms.json
  def index
    @event_ms = EventM.all
  end

  # GET /event_ms/1
  # GET /event_ms/1.json
  def show
  end

  # GET /event_ms/new
  def new
    @event_m = EventM.new
    @event_m.user_id = $current_user[0].id
    @event =Event.find(params[:event_id])
    @event_m.event_id = @event.id
  end

  # GET /event_ms/1/edit
  def edit
  end

  # POST /event_ms
  # POST /event_ms.json
  def create
    @event_m = EventM.new(event_m_params)
    @event =Event.find(@event_m.event_id)
    respond_to do |format|
      if @event_m.save
        format.html { redirect_to @event, notice: 'Event m was successfully created.' }
        format.json { render :show, status: :created, location: @event_m }
      else
        format.html { render :new }
        format.json { render json: @event_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_ms/1
  # PATCH/PUT /event_ms/1.json
  def update
    respond_to do |format|
      if @event_m.update(event_m_params)
        format.html { redirect_to @event_m, notice: 'Event m was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_m }
      else
        format.html { render :edit }
        format.json { render json: @event_m.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_ms/1
  # DELETE /event_ms/1.json
  def destroy
    @event_m.destroy
    respond_to do |format|
      format.html { redirect_to event_ms_url, notice: 'Event m was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_m
      @event_m = EventM.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_m_params
      params.fetch(:event_m, {}).permit(:user_id,:event_id)
    end
end
